FROM ubuntu:14.04
MAINTAINER Hong-She Liang <starofrainnight@gmail.com>

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    pure-ftpd \
    && apt-get clean

ADD files/entrypoint.sh /usr/local/bin/

VOLUME /srv/ftpd
EXPOSE 21
EXPOSE 20

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
