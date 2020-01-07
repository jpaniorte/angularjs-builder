FROM node:10.15.3

RUN npm i -g bower eslint

COPY packages/* /home/node/

WORKDIR /home/node

RUN npm install && bower install --allow-root
