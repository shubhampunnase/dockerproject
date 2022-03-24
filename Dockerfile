FROM ubuntu
RUN apt update -y
RUN apt install -y nginx
RUN apt install -y zip
RUN apt install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html 
WORKDIR /var/www/html 
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80
