FROM node:18.15.0-bullseye
ARG WORKDIR
ARG username=vscode
ARG useruid=1000
ARG usergid=${useruid}

ENV HOME=/${WORKDIR} \
    LANG=ja_JP.UTF-8

WORKDIR ${HOME}

RUN apt-get update && npm install -g yarn
RUN yarn create vite front-vue --template vue
