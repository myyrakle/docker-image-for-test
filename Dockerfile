FROM ubuntu:latest
RUN apt-get update
RUN apt-get install git curl -y
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash
RUN apt-get install nodejs -y
WORKDIR /home
RUN git clone https://github.com/myyrakle/node-server-for-test
WORKDIR /home/node-server-for-test
ENTRYPOINT [ "sh", "/home/node-server-for-test/run.sh" ]