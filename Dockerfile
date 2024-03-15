FROM node:16-alpine AS builder

# Set working directory
WORKDIR /app

COPY . .
# Copy package.json and package-lock.json (or yarn.lock)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install
# Build stage
RUN npm run build  


# Expose the port (usually 80)
EXPOSE 3000

# Start the development server (replace with your production server command)
CMD npm start
