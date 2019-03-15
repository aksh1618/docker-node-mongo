# Base image: Node v11, latest sub-version
FROM node:11

# Working directory in container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to WORKDIR;
# / is needed in case of multiple files.
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy host pwd files to WORKDIR
COPY . .

# Expose port 3000
EXPOSE 3000

# Default command for image
CMD [ "npm", "start" ]
