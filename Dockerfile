# Use the official Nginx image as the base image
FROM nginx:latest
<<<<<<< HEAD

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Expose ports
EXPOSE 80
EXPOSE 443

# CMD to start Nginx
CMD ["nginx", "-g", "daemon off;"]
=======
COPY ./conf.d/default.conf /etc/nginx/nginx.conf
>>>>>>> 673e424db604ca90478b7c6d86e46b48629000d0
