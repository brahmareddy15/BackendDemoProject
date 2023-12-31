# Use the official Node.js image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your Node.js app is listening on
EXPOSE 3000

# Start the Node.js app
CMD ["node", "app.js"]
