FROM ubuntu:24.04

RUN apt-get update \
 && apt-get dist-upgrade --auto-remove --purge --yes \
 && apt-get install --no-install-recommends --yes \
        keepalived \
 && apt-get distclean \
 && rm -rf /usr/share/{doc,info,man} \
 && rm -rf /usr/local/share/{doc,info,man}

CMD [ "keepalived", "-l", "-D" ]
