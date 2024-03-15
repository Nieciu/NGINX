FROM nginx:latest
COPY ./conf.d/default.conf /etc/nginx/nginx.conf