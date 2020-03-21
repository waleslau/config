mkdir /v2stack/v2ray
mkdir /v2stack/caddy

wget https://raw.githubusercontent.com/waleslau/config/master/Linux/v2/docker/stack.yml /v2stack/
wget https://raw.githubusercontent.com/waleslau/config/master/Linux/v2/docker/config.json
wget https://raw.githubusercontent.com/waleslau/config/master/Linux/v2/docker/Caddyfile


mv config.json /v2stack/v2ray/
mv Caddyfile /v2stack/caddy/

# wget https://cdn.jsdelivr.net/gh/waleslau/config/Linux/v2/docker/stack.yml /v2stack/
# wget https://cdn.jsdelivr.net/gh/waleslau/config/Linux/v2/docker/config.json /v2stack/v2ray/
# wget https://cdn.jsdelivr.net/gh/waleslau/config/Linux/v2/docker/Caddyfile /v2stack/caddy/

docker stack deploy -c /v2stack/stack.yml v2-stack