## install v2ray  
```bash
bash <(curl -L -s https://cdn.jsdelivr.net/gh/waleslau/config/free/install.sh)
```

## BBR
```bash

## 开启BBR 
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
# 检测
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control

lsmod | grep bbr

```