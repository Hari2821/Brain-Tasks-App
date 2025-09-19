# Use Nginx to serve static files
FROM nginx:alpine

# Copy built static files into nginx web directory
COPY . /usr/share/nginx/html

# Expose Nginx default port
EXPOSE 80

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
