FROM node:10-alpine
LABEL author="靓仔吉"
CMD node /app/dist/index.js
WORKDIR /app
EXPOSE $port
ADD dist/ /app/dist
ADD config.json /app/config.json
ADD package.json /app/package.json
RUN npm i --production