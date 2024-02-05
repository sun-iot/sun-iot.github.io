FROM nginx:1.25.3-alpine3.18

WORKDIR /www/nginx/html

COPY ./public /www/nginx/html
COPY blog.conf /etc/nginx/conf.d/blog.conf

EXPOSE 80  
  
CMD ["nginx", "-g", "daemon off;"]
