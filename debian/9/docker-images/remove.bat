systemctl stop docker
rm -rf /var/lib/docker/overlay2
rm -rf /var/lib/docker/image/aufs
rm -f /var/lib/docker/linkgraph.db
systemctl start docker