FROM debian:jessie
MAINTAINER Glenn Y. Rolland <glenn.rolland@netcat.io>

RUN apt-get update \
  && apt-get install -y build-essential g++ flex bison gperf ruby perl \
     libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
     libpng-dev libjpeg-dev python libx11-dev libxext-dev git
RUN ln -sf /usr/bin/nodejs /usr/bin/node

WORKDIR /root
ADD build.sh /root/build.sh

CMD sh /root/build.sh /target

