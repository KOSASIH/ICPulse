# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application's source code to the container
COPY . .

# Expose a port for your application (if needed)
EXPOSE 8080

# Define the command to run your application
CMD ["node", "app.js"]
