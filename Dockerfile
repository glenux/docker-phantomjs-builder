FROM debian:jessie
MAINTAINER Glenn Y. Rolland <glenn.rolland@netcat.io>

RUN apt-get update \
            && apt-get install -y wget

WORKDIR /root
ADD build.sh


