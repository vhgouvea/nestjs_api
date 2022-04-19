FROM node:12-alpine

WORKDIR /home/api/nestjs

COPY package.json . 
COPY package-lock.json .

RUN npm install

COPY . .

CMD npm run start:dev