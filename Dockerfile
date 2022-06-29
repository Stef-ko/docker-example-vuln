FROM node:14-alpine

ARG CURL_OPTIONS=""

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["node", "app.js"]