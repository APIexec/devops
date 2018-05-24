#https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-14-04-lts
##Create Demo Pages for Each Virtual Host

# nano /var/www/$domain/public_html/index.html
cp /var/www/$domain/public_html/index.html /var/www/test.com/public_html/index.html