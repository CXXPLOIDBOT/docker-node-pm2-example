FROM node:12-slim

# Create directory
WORKDIR /usr/src/app

# Dependencies
COPY package*.json ./
RUN npm install

# Budle app source
COPY . .

# Expose port
EXPOSE 8080

ENV APP_VERSION 17.12.79

# Start our node app
CMD ["node", "server.js"]