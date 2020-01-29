#!/bin/bash

apt-get install -y apache2 mysql-server exuberant-ctags glimpse
apt-get install -y libdbi-perl libdbd-mysql-perl libfile-mmagic-perl libapache2-mod-perl2

wget https://sourceforge.net/projects/lxr/files/stable/lxr-2.3.5.tgz/download

tar -zxf ~/Download/lxr-2.3.5.tgz
mv ~/Download/lxr-2.3.5 /usr/local/share/lxr

./usr/local/share/lxr/scripts/configure-lxr.pl
./usr/local/share/lxr/custom.d/initdb.sh
cp /usr/local/share/lxr/custom.d/lxr.conf /usr/local/share/lxr/

wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.16.tar.xz
tar xf ~/Download/linux-5.4.16.tar.xz
mv ~/Download/linux-5.4.16 /home/myself/kernel/v1

./usr/local/share/lxr/genxref --url=http://localhost/lxr
