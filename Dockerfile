FROM jordi/ubuntu
MAINTAINER Jordi Íñigo Griera

RUN apt-get update
RUN apt-get -y install git-core python bsdmainutils

WORKDIR /git
RUN git clone https://github.com/jvehent/cipherscan.git
WORKDIR /git/cipherscan

ENTRYPOINT ["/git/cipherscan/cipherscan"]
CMD ["--help"]
