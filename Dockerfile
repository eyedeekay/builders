FROM debian:stretch
RUN apt-get update && \
    apt-get -yq install devscripts build-essential lintian zip make && \
    adduser --home /home/user --disabled-password --gecos 'user,,,,' user
USER user
WORKDIR /home/user/workspace
CMD /bin/sh

