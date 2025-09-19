# Use base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN npm install

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
