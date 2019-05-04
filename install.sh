#!/bin/bash
if [ $UID != 0 ]; then
	echo "You must run this as root."
	exit 1
fi
dpkg -i libpng12-0_1.2.50-2+deb8u3_amd64.deb libtiff4_3.9.5-2ubuntu1_amd64.deb
mkdir /tmp/mg6330 || rm -r /tmp/mg6330
cd /tmp/mg6330
wget -q http://gdlp01.c-wss.com/gds/2/0100004692/01/cnijfilter-mg6300series-3.80-1-deb.tar.gz && tar -zxvf *.gz
cd cnijfilter-mg6300series-3.80-1-deb
./install.sh
rm -r /tmp/mg6330
