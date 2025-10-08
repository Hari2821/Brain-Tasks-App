FROM node:18
WORKDIR /app

# Copy only the dist folder (already built)
COPY dist ./dist

# Install serve to run the static files (if it's a frontend app)
RUN npm install -g serve

# Start using serve (you can change this depending on your app)
CMD ["serve", "-s", "dist", "-l", "3000"]

