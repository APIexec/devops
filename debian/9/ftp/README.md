#FTP 2 on hans
sudo apt install vsftpd ftp


CONFIG
cat /etc/vsftpd.conf

MAKE a COPY
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.orig

ALL USER
cat /etc/passwd

USER
sudo adduser ftpuser --shell /bin/false --home /var/mysql-backup
sudo adduser backup --shell /bin/false --home /var/mysql-backup
ftp4buch

passwd ftpuser

sudo adduser administrator ftpuser
sudo adduser ftp ftpuser

RESTART
systemctl restart vsftpd