FROM ubuntu
RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt-get install git -yq
RUN apt-get install -y apache2 php7.4 libapache2-mod-php7.4
RUN apt-get clean
RUN git clone https://github.com/alejandro3c3c/projCert.git
WORKDIR /projCert/website
RUN rm /var/www/html/index.html
RUN cp -r . /var/www/html/
EXPOSE 80
CMD apache2ctl -D FOREGROUND