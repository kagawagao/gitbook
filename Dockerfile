FROM node:10

RUN apt-get update

RUN apt-get install -y -qq sshpass

RUN apt-get install -y sudo

RUN npm install -g gitbook-cli
