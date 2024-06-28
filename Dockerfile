FROM ghcr.io/open-webui/open-webui:main
RUN apt-get -y update
RUN apt-get -y install vim
RUN apt-get install -y iputils-ping
RUN apt install net-tools -y
