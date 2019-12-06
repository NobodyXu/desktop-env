#!/bin/bash

if [ -f /etc/rpi-issue ]; then
    os=Raspbian
else
    source /etc/os-release

    [ "$ID" = "ubuntu" ] && os=Ubuntu
    [ "$ID" = "debian" ] && os=Debian
fi

base_url=https://mega.nz/linux/MEGAsync/

version_num=`lsb_release -rs`
[ "$os" != "Ubuntu" ] && version_num=${version_num%.*}

href=$(curl $base_url | grep ${os}_${version_num} | grep -o '<a href=".*/">' | cut -d '"' -f 2)
url=${base_url}${href}

curl ${url}Release.key | apt-key add -
echo "deb $url ./" >/etc/apt/sources.list.d/megasync.list
