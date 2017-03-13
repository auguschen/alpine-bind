FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && apk add bind

EXPOSE 53/udp

CMD /usr/sbin/named -f -c /etc/bind/named.conf
