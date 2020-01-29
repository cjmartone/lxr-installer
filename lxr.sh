#!/bin/bash

apt-get install -y apache2 mysql-server exuberant-ctags glimpse
apt-get install -y libdbi-perl libdbd-mysql-perl libfile-mmagic-perl libapache2-mod-perl2

wget https://sourceforge.net/projects/lxr/files/stable/lxr-2.3.5.tgz

tar xf lxr-2.3.5.tgz
rm -r lxr-2.3.5.tgz
mv lxr-2.3.5 lxr

cd lxr
printf "\n\n\n\n\n\n\n/home/myself/glimpse_DB\n\nLXR\n\n\n/home/myself/kernel\n\n\n\nv1\n\n\n\n\nkernel\n\n\n\n" | ./scripts/configure-lxr.pl
./custom.d/initdb.sh
cp custom.d/lxr.conf .

wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.16.tar.xz
tar xf linux-5.4.16.tar.xz
rm -r linux-5.4.16.tar.xz
mkdir /home/myself
mkdir /home/myself/kernel
mkdir /home/myself/kernel/v1
mv linux-5.4.16 /home/myself/kernel/v1

./genxref --url=http://localhost/lxr

cp custom.d/apache-lxrserver.conf /etc/apache2/conf-available
a2enconf apache-lxrserver.conf
mkdir /etc/httpd
cp custom.d/apache-lxrserver.conf /etc/httpd/conf.d
