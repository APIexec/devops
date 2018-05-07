http://wiki.bash-hackers.org/howto/conffile


## Per-user configs 

There's also a way to provide a system-wide config file in /etc and a custom config in ~/(user's home) to override system-wide defaults. In the following example, the if/then construct is used to check for the existance of a user-specific config:

    #!/bin/bash
    echo "Reading system-wide config...." >&2
    . /etc/cool.cfg
    if [ -r ~/.coolrc ]; then
      echo "Reading user config...." >&2
      . ~/.coolrc
    fi
    
    
Secure it
As mentioned earlier, the sourced file can contain anything a Bash script can. Essentially, it is an included Bash script. That creates security issues. A malicicios person can "execute" arbitrary code when your script is sourcing its config file. You might want to allow only constructs in the form NAME=VALUE in that file (variable assignment syntax) and maybe comments (though technically, comments are unimportant). Imagine the following "config file", containing some malicious code:

    # cool config file for my even cooler script
    username=god_only_knows
    hostname=www.example.com
    password=secret ; echo rm -rf ~/*
    parameter=foobar && echo "You've bene pwned!";
    # hey look, weird code follows...
    echo "I am the skull virus..."
    echo rm -fr ~/*
    mailto=netadmin@example.com
    
You don't want these echo-commands (which could be any other commands!) to be executed. One way to be a bit safer is to filter only the constructs you want, write the filtered results to a new file and source the new file. We also need to be sure something nefarious hasn't been added to the end of one of our name=value parameters, perhaps using ; or && command separators. In those cases, perhaps it is simplest to just ignore the line entirely. Egrep (grep -E) will help us here, it filters by description:

#!/bin/bash
    configfile='/etc/cool.cfg'
    configfile_secured='/tmp/cool.cfg'

# check if the file contains something we don't want
    if egrep -q -v '^#|^[^ ]*=[^;]*' "$configfile"; then
      echo "Config file is unclean, cleaning it..." >&2
      # filter the original to a new file
      egrep '^#|^[^ ]*=[^;&]*'  "$configfile" > "$configfile_secured"
      configfile="$configfile_secured"
    fi

# now source it, either the original or the filtered variant
    source "$configfile"
    
To make clear what it does: egrep checks if the file contains something we don't want, if yes, egrep filters the file and writes the filtered contents to a new file. If done, the original file name is changed to the name stored in the variable configfile. The file named by that variable is sourced, as if it were the original file.
This filter allows only NAME=VALUE and comments in the file, but it doesn't prevent all methods of code execution. I will address that later.


# GET EMAIL
I succesfully used a construction like

    MAIL_TO=`perl -ne '/^\s*MAIL_TO\s*=\s*([\s\w@\d,\._-]+)/ && do {print $1; exit;}' $CONFIG_FILE`
      
      
- don't use black lists, use white lists (you can never be sure to catch all possibilities) - don't try to fix malicious input, abort instead and raise a error (otherwise there might be greater harm and if some thing fishy is going on, you should be notified about that)

(Of course there are exceptions for this rules, but not in this example.)

It is a quiet paranoid version, allowing only lines start whit a # as comments and variable declarations like "hello='world 88'". If you have stuff like URL's in your config file, you can add the needed characters (:/?#&) to the regex. There should be no escape from the string (or did I overlook some thing?). This way has as well the advantage that it doesn't need a temporary file.

Hope that helps some one to ;-)

My approach to this is:      
      
      #!/bin/bash
      
      c_file=config_file_test
      
      unknown=`cat $c_file | grep -Evi "^(#.*|[a-z]*='[a-z0-9 ]*')$"`
      if [ -n "$unknown" ]; then
       echo "Error in config file. Not allowed lines:"
       echo $unknown
       exit 1
      fi
      source $c_file
      echo "File Loaded"
      
# Whitelist      
How about using whitelisting instead and rejecting the file if something turns out wrong:

    #!/bin/bash
    
    CONFIG_PATH='./bashconfig.conf'
    # commented lines, empty lines und lines of the from choose_ANYNAME='any.:Value' are valid
    CONFIG_SYNTAX="^\s*#|^\s*$|^[a-zA-Z_]+='[^']*'$"
    
    # check if the file contains something we don't want
    if egrep -q -v "${CONFIG_SYNTAX}" "$CONFIG_PATH"; then
      echo "Error parsing config file ${CONFIG_PATH}." >&2
      echo "The following lines in the configfile do not fit the syntax:" >&2
      egrep -vn "${CONFIG_SYNTAX}" "$CONFIG_PATH"
      exit 5
    fi
    
    # otherwise go on and source it:
    source "${CONFIG_PATH}"      