ARG CODE_VERSION=18.04
FROM ubuntu:${CODE_VERSION}
LABEL version="1.0"
MAINTAINER Ivan Kukulevskyy <i.kukulevskyy@gmail.com>
RUN apt update
RUN apt install -y nginx
RUN echo 'Hello World!!!' \
        >/var/www/html/index.html
WORKDIR /var/www/html/
COPY index2.html .
RUN ls -la
RUN apt clean
HEALTHCHECK --interval=5m --timeout=10s \
  CMD curl -f http://localhost/ || exit 1
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
