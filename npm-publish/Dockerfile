FROM node:22

RUN npm install -g npm-auth-to-token@1.0.0

COPY entrypoint.sh /entrypoint.sh

WORKDIR /package

ENTRYPOINT ["/entrypoint.sh"]
