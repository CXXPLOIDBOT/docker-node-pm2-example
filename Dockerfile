FROM node:12-slim

# Create directory
WORKDIR /usr/src/app

# Dependencies
COPY package*.json ./
RUN npm install pm2 -g
RUN npm install

# Budle app source
COPY . .

# Expose port
EXPOSE 8080

ENV APP_VERSION 17.12.79

USER node

# Start our node app
# CMD ["node", "server.js"]
CMD ["pm2-runtime", "ecosystem.config.js"]