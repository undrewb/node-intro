# The first thing we need to do is define from what image 
# we want to build from. Here we will use the latest LTS 
# (long term support) version 8 of node available from the 
# Docker Hub: https://hub.docker.com/
FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]