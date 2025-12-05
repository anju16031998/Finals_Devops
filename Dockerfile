# Use official nginx image as base
FROM nginx:alpine

# Copy custom HTML content from sample-app folder
COPY sample-app/index.html /usr/share/nginx/html/
COPY sample-app/styles.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
