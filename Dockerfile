FROM nginx:alpine
#copy aplication file
COPY index.html /usr/share/nginx/html/
EXPOSE 80
