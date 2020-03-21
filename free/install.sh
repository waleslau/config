#!/bin/bash

## 开启BBR 
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
# 检测
lsmod | grep bbr
mkdir v2
cd v2
wget https://cdn.jsdelivr.net/gh/waleslau/config/free/install.sh
## 安装v2
apt update
apt upgrade
apt install -y nginx
wget https://cdn.jsdelivr.net/gh/waleslau/config/free/conf/nginx.conf
wget https://cdn.jsdelivr.net/gh/waleslau/config/free/go.sh
bash go.sh
wget https://cdn.jsdelivr.net/gh/waleslau/config/free/conf/config.json
cp config.json /etc/v2ray/config.json
systemctl start v2ray
systemctl enable v2ray
echo "然后配置Nginx"