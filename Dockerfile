FROM debian:stretch
RUN apt-get update && \
    apt-get -yq install devscripts build-essential lintian zip make && \
    adduser --home /home/user --disabled-password --gecos 'user,,,,' user
WORKDIR /home/user/
USER user
CMD /bin/sh

