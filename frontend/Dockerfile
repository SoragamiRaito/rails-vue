FROM node:18.15.0-bullseye
ARG WORKDIR

ENV HOME=/${WORKDIR} \
    LANG=ja_JP.UTF-8

WORKDIR ${HOME}

RUN apt-get update

RUN mkdir app
WORKDIR /app
RUN yarn init -y && yarn install

WORKDIR ${HOME}
RUN yarn create vite front-vue --template vue