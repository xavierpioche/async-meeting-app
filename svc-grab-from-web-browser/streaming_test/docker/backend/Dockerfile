FROM node
WORKDIR /app
RUN npm install body-parser express express-fileupload
RUN npm install nodemon -g
COPY ./index.js /app
COPY ./package.json /app
