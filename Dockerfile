FROM ubuntu:latest
RUN sudo apt-get update -y
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
RUN sudo apt-get install nodejs git -y
WORKDIR /home
RUN git clone https://github.com/myyrakle/node-server-for-test
WORKDIR /home/node-server-for-test
ENTRYPOINT [ "run.sh" ]