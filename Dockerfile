# Use Nginx as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx content
RUN rm -rf ./*

# Copy the static website files to the container
COPY . .

# Expose port 80 for web access
EXPOSE 80

# Start Nginx (default CMD in nginx image)
CMD ["nginx", "-g", "daemon off;"]
