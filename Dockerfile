FROM ubuntu

RUN apt-get update
RUN apt-get install curl clang-3.5 gcc -y
RUN curl http://dist.crystal-lang.org/apt/setup.sh | sudo bash
RUN apt-get install crystal -y
RUN apt-get install libssl-dev -y

RUN mkdir /var/www
ADD ./ /var/www
WORKDIR /var/www

EXPOSE 3000
CMD crystal app.cr
# CMD crystal --version
