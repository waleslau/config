# 安装caddy
curl https://getcaddy.com | bash -s personal hook.service,http.nobots
mkdir /etc/caddy/
wget https://cdn.jsdelivr.net/gh/waleslau/config/Linux/v2/Caddyfile
cp Caddyfile /etc/caddy/
caddy -service install hook.service
# 开启caddy
caddy -conf /etc/caddy/Caddyfile