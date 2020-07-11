docker run -d -it \
-v /etc/timezone:/etc/timezone:ro \
-v mv:/data \
-p 25565:25565 \
-e EULA=TRUE \
-e VERSION=1.16.1 \
-e TYPE=FORGE \
--name mc \
itzg/minecraft-server