#!/bin/bash
wget -O /var/tmp/Country.mmdb https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
cp -f /var/tmp/Country.mmdb /home/idea/.config/oh-my-clash/Country.mmdb
echo -e "\nAlready copy to '/home/idea/.config/oh-my-clash/Country.mmdb'\n"
