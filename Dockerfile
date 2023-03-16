FROM node:18

WORKDIR /home/node/app

COPY package*.json ./
RUN npm install

COPY . .
RUN chown -R node:node .

ENV HOST=0.0.0.0

USER node

EXPOSE 1234

CMD [ "npm", "start" ]
