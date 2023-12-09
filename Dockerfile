# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package*.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn

# Expose the port the app will run on
EXPOSE 3001

# Define the command to run your application
CMD ["yarn", "start"]