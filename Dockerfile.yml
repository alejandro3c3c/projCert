FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install git -yq
RUN git clone https://github.com/alejandro3c3c/projCert.git
WORKDIR /projCert
RUN rm /var/www/html/index.html
COPY website /var/www/html/
EXPOSE 80
CMD apache2ctl -D FOREGROUND