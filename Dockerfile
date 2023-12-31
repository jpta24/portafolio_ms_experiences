# Use an official Node runtime as a parent image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the needed packages
RUN npm install

# Bundle the app's source code inside the Docker image
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 5013

# Run the app when the container launches
CMD ["node", "server.js"]

# docker build -t test-docker-ms_experiences .
# docker run --rm -p 5013:5013 --env-file ./.env --name portafolio-ms_experiences-container test-docker-ms_experiences