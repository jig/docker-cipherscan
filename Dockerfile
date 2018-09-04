FROM alpine
MAINTAINER Jordi Íñigo Griera

RUN apk --no-cache add bash git python
WORKDIR /git
RUN git clone https://github.com/jvehent/cipherscan.git
WORKDIR /git/cipherscan
RUN git clone --depth=1 https://github.com/tomato42/tlslite-ng.git .tlslite-ng
RUN ln -s .tlslite-ng/tlslite tlslite
RUN git clone --depth=1 https://github.com/warner/python-ecdsa.git .python-ecdsa
RUN ln -s .python-ecdsa/src/ecdsa ecdsa

ENTRYPOINT ["/git/cipherscan/cipherscan"]
CMD ["--help"]

