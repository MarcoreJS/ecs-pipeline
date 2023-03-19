# Base image
FROM node:14-alpine

# Create and set the working directory
WORKDIR /src

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy application files
COPY . .

# Expose the port that the application will run on
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
