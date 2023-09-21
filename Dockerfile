#Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application source code into the container
COPY . .

# Expose the port your app will run on (e.g., 3000)
EXPOSE 3000

# Define the command to run your application
CMD [ "node", "app.js" ]

