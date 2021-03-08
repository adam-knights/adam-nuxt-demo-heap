FROM node:lts-alpine

ADD . .

RUN apk add --no-cache zip nodejs npm
RUN npm i --no-optional
RUN npm run build
RUN npm run generate --if-present

RUN mkdir artifacts

RUN zip -r ./artifacts/adam-nuxt-demo-heap ./deploy