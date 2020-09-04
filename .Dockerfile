FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN apt-get install curl -y
RUN apt-get install php -y

# composer
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN npm install -g sass
RUN npm install -g grunt

RUN apt-get install openssh-client -y