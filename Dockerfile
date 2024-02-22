# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /app

# Copy the contents of the src directory into the container
COPY src /app/src

# Copy the contents of the dist directory into the container
COPY dist /app/dist

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 3000

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
