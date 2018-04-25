set QUERY=%1
set BROWSER=chrome
set URL=https://www.google.de/search?q
start %BROWSER% %URL%=%QUERY%
::explorer %URL%=%QUERY%