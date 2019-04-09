FROM ubuntu:18.04
MAINTAINER Ivan Kukulevskyy <i.kukulevskyy@bpmonline.com>
RUN apt update
RUN apt install -y nginx
RUN echo 'Hello World!!!' \
        >/var/www/html/index.html
RUN apt clean
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
