FROM node:16-alpine

RUN apk add --no-cache tini

RUN mkdir -p /usr/src/app

RUN chown -R node:node /usr/src/app

USER node

WORKDIR /usr/src/app

COPY --chown=node:node . .

CMD ["npm","run","start:prod"]