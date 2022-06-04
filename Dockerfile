FROM debian:unstable
LABEL MAINTAINER "Hugo Josefson <hugo@josefson.org> (https://www.hugojosefson.com/)"

RUN apt-get update \
    && apt-get install -y g810-led \
    && apt-get clean

ENTRYPOINT ["/usr/bin/g513-led"]
