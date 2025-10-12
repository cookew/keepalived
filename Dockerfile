FROM ubuntu:24.04

RUN apt-get update \
 && apt-get install --no-install-recommends --yes \
        keepalived \
 && apt-get distclean

CMD [ "keepalived", "-l", "-D" ]
