FROM node:10.19-alpine

EXPOSE 10000
EXPOSE 10001
EXPOSE 10002

WORKDIR /app

COPY package.json .

RUN npm install

ENTRYPOINT [ "npm", "run", "azurite" ]
