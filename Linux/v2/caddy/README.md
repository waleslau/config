## install v2ray  

```bash


## 开启BBR 
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
# 检测
 lsmod | grep bbr

## 安装v2
wget https://cdn.jsdelivr.net/gh/waleslau/config/Linux/v2/go.sh

bash go.sh

wget https://cdn.jsdelivr.net/gh/waleslau/config/Linux/v2/config.json /etc/v2ray/

## wget https://cdn.jsdelivr.net/gh/waleslau/config/Linux/v2/install_caddy.sh

## bash install_caddy.sh

## some config then

mkdir /etc/caddy/
wget https://cdn.jsdelivr.net/gh/waleslau/config/Linux/v2/Caddyfile /etc/caddy/

caddy -conf /etc/caddy/Caddyfile

systemctl start v2ray

```