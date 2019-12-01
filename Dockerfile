FROM ubuntu:xenial

MAINTAINER Angel Moratilla <amoratilla@biblioeteca.com>

ENV DEBIAN_FRONTEND=noninteractive \
    TERM=xterm

# Install ride from local deb
    # required to use add-apt-repository
RUN buildDeps='software-properties-common'; \
    set -x && \
    apt-get update && apt-get install -y $buildDeps --no-install-recommends;
RUN apt-get install -y wget
RUN apt-get install -y libsodium18 libzmq5
#Obtain the package
RUN wget http://192.168.1.37:8080/ride-cli_0.2.0_amd64.deb -O ride-cli_0.2.0_amd64.deb

#Install it
RUN dpkg -i ride-cli_0.2.0_amd64.deb

#Install dependecies
RUN apt-get install -y -f



