FROM node:18.15.0-bullseye
ARG WORKDIR

ENV HOME=/${WORKDIR} \
    LANG=ja_JP.UTF-8

WORKDIR ${HOME}

RUN apt-get update \
    && yarn install

COPY . ./
COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock

EXPOSE 5173
CMD ["yarn", "dev", "--host"]