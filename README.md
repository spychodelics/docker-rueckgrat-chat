# docker-rueckgrat-chat
Docker Container  for rueckgrat chat app

Clone:
git clone https://github.com/tanzfisch/Rueckgrat.git

Build:
cp ~/.ssh/caddy-root.crt . && docker build --no-cache --build-arg HUB_CERT=caddy-root.crt -t docker-rueckgrat-chat .

Run:
docker run --rm -p 3001:3001 docker-rueckgrat-chat

->

https://localhost:3001 

takes about 5-10 sec, accept "risks" in your Browser. 

Application should autostart. 

xterm available with right click



To use precompiled Dockerpackage (missing the caddy-root.crt) from Github Container Registry: 

docker pull ghcr.io/spychodelics/docker-rueckgrat-chat:latest
docker run --rm -p 3001:3001 ghcr.io/spychodelics/docker-rueckgrat-chat:latest

Mount caddy-root.crt to /config/.ssh/caddy-root.crt
