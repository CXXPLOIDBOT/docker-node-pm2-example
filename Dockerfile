# Grab minimal node docker image
FROM node:12-slim

# Create directory
WORKDIR /usr/src/app

# Dependencies
COPY package*.json ./
RUN npm install pm2 -g
RUN npm install yarn
RUN npm install

# Budle app source
COPY run.cjs

# Expose port
EXPOSE 8080

# Set environment variables
ENV APP_VERSION 17.12.79

# Set the user
USER node

# Start our node app using PM2
# CMD ["node", "server.js"]
CMD ["pm2-runtime", "ecosystem.config.js"]
