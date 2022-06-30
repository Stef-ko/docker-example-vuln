FROM node:16.15.1

ARG APISECRET="MYSECRET"

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["node", "app.js"]