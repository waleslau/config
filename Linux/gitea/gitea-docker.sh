docker run -d -p 3000:3000 -p 3022:22 -v /opt/gitea/data:/data --name=gitea --restart=always gitea/gitea
