FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && apk --no-cache add bind bind-tools && mkdir -p /var/bind/log

COPY named.conf /etc/bind/named.conf

EXPOSE 53/udp

CMD ["/usr/sbin/named", "-f -c /etc/bind/named.conf"]
