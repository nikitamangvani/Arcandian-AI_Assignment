FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./html /usr/share/nginx/html

EXPOSE 80

# Start NGINX in the foreground (the default entrypoint of NGINX will run automatically)
CMD ["nginx", "-g", "daemon off;"]