FROM ubuntu:16.04
MAINTAINER Ivan Kukulevskyy <i.kukulevskyy@bpmonline.com>
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hello World!!!' \
        >/var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
