FROM node:14

ARG APISECRET="MYSECRET"

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["node", "app.js"]