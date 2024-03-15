# Use the official Nginx image as the base image
FROM nginx:latest

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy SSL certificate and key
COPY /etc/ssl/api.nserv.site/ /etc/ssl/api.nserv.site/
COPY /etc/ssl/api.nserv.site/ /etc/ssl/api.nserv.site/

# Expose ports
EXPOSE 80
EXPOSE 443

# CMD to start Nginx
CMD ["nginx", "-g", "daemon off;"]