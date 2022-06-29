FROM node:14-alpine

RUN apt-get update && apt-get install -y git vim

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["node", "app.js"]