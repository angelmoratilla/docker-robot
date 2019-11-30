FROM angelmoratilla/base-ubuntu16

MAINTAINER Angel Moratilla <angelmoratilla@gmail.com>

# Install ride from local deb
    # required to use add-apt-repository
RUN buildDeps='software-properties-common'; \
    set -x && \
    apt-get update && apt-get install -y $buildDeps --no-install-recommends;
   
#Obtain the package
RUN wget http://localhost:8080/ride-cli_0.2.0_amd64.deb -O ride-cli_0.2.0_amd64.deb

#Install it
RUN dpkg -i ride-cli_0.2.0_amd64.deb

#Install dependecies
RUN apt-get install -y -f



