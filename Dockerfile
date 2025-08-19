# Use official Node.js image
FROM node:20

# Set working directory
WORKDIR /app


# Copy the rest of the app files
COPY . . 

# Copy package files and install dependencies
COPY package*.json ./

RUN npm install

# Expose port your app runs on
EXPOSE 3002

# Start the app
CMD ["npm", "start"]
