FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
#COPY yarn.lock ./

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "app.js" ]
