FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update


RUN apt-get install nodejs -y
RUN apt-get install npm -y

RUN apt-get install curl -y


RUN apt-get update
RUN apt -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt -y install php7.4
RUN apt-get -y install php7.4-dom
#RUN apt-get install -y php7.4-{bcmath,bz2,intl,gd,mbstring,mysql,zip}


# composer
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer


RUN npm install -g sass -y
RUN npm install -g grunt -y

RUN apt-get install openssh-client -y
RUN apt-get install zip -y

