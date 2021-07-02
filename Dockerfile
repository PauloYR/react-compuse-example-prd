FROM node:lts-alpine3.12 as builder

WORKDIR /app

COPY package.json .

RUN yarn install

COPY . .

RUN yarn build

RUN yarn add global serve
CMD ["yarn", "production"]