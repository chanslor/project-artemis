<h1 align="center"> Project Artemis </h1> <br>
<p align="center">
    <img src="rocket.png" width="450">
  </a>
</p>

#This project started as Carli's hope.
#I'm creating an AI named Artemis
 
#System: Fedora freaking Linux of course. FC40
#One Nvida Card in my gaming laptop for development.

#Overview:
# Run Rocket LLM AI model 
# Install open-webui on top for all the rich freaking features.


# Setup OLLAMA

#I've notice that ollams is kinda like a Docker engine.
#This command not only downloaded ollama and installed, but setup my laptop to have a differnet Nvida driver, which is kicking and much better.

 curl -fsSL https://ollama.com/install.sh | sh

#I disabled the systemD stuff so that I could start manually with
# within a terminal to see all the messages.
#Start manual for now.
X systemctl status ollama
X systemctl enable ollama
X systemctl start ollama
#TODO, create a systemD env file to pass OLLAMA_HOST var
Disable until create systemd ENV FILE in systemD

#Starting the server manually
OLLAMA_HOST=192.168.1.63:11435 ollama serve

level=INFO source=routes.go:1111 msg="Listening on 192.168.1.63:11435 (version 0.1.47)"


OLLAMA_HOST=192.168.1.63:11435 ollama run chand1012/rocket

#Is it running
--------------
 localhost:11434           #In browser to make sur its running
 http://172.17.0.1:11434/

 ADMIN_USER_EMAIL
 ADMIN_USER_PASSWORD
 HOST
 PORT
 
 OLLAMA_API_BASE_URL=http://myserver.com:11434/api

 http://localhost:3000/api/v1/


# Setup open-webui

docker run -d --network=host -e OLLAMA_API_BASE_URL=http://localhost:11434/api --name ollama-webui --restart always ollama-webui

#xxx docker run --network=host --env OLLAMA_API_BASE_URL=http://localhost:11434/api --env WEBUI_AUTH=False -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main

#https://github.com/open-webui/open-webui/issues/209
 --build-arg OLLAMA_API_BASE_URL=http://your-server.com:11434/api

~/DOCKER/AI/carli-project

 docker build --build-arg OLLAMA_API_BASE_URL=http://lnx.chanslor.edu:11434/api -t chanslor/carli:v1 .
[+] Building 0.6s (5/5) FINISHED



###########

  docker run -i --network=host -e OLLAMA_API_BASE_URL=http://localhost:11434/api --name ollama-webui --restart always chanslor/carli:v2


docker run -it chanslor/carli:v3 /bin/bash

docker run -i -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data -e OLLAMA_API_BASE_URL=http://lnx.chanslor.edu:11434/api  --restart always chanslor/carli:v3

#### WORKING at 5pm
docker run -i -p 3000:8080 --add-host=172.17.0.1:host-gateway -v open-webui:/app/backend/data -e OLLAMA_API_BASE_URL=http://lnx.chanslor.edu:11434/api  --restart always chanslor/carli:v3





 docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main

Initial auth issue
bypass:
docker run --env WEBUI_AUTH=False -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main

docker run -p 3000:8080 --gpus all --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main

docker run -d -p 3000:8080 --gpus all --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:cuda


admin
user
Mike
admin@localhost	a few seconds ago	June 27, 2024


admin
user
carli
carli@localhost	a few seconds ago	June 27, 2024
