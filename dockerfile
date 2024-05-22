FROM node:14

WORKDIR /usr/src/app

ENV DB_HOST=YOUR_CLOUD_SQL_IP_ADDRESS
ENV DB_USER=root
ENV DB_PASSWORD=YOUR_PASSWORD
ENV DB_NAME=mydatabase

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]


