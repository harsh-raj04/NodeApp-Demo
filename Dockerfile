FROM node:alpine
LABEL app=my-node-app-demo
EXPOSE 3000
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "./bin/www"]