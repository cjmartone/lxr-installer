#!/bin/bash

apt-get install -y apache2 mysql-server exuberant-ctags glimpse
apt-get install -y libdbi-perl libdbd-mysql-perl libfile-mmagic-perl libapache2-mod-perl2

wget https://sourceforge.net/projects/lxr/files/stable/lxr-2.3.5.tgz

tar -zxf lxr-2.3.5.tgz
mv lxr-2.3.5 lxr

cd lxr
./scripts/configure-lxr.pl
./custom.d/initdb.sh
cp custom.d/lxr.conf .

wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.16.tar.xz
tar linux-5.4.16.tar.xz
mkdir kernel
mkdir kernel/v1
mkdir glimpse_DB
mv linux-5.4.16 kernel/v1

./usr/local/share/lxr/genxref --url=http://localhost/lxr
