FROM ubuntu:16.10

ENV DEBIAN_FRONTEND noninteractive

#install essentials
RUN	apt-get update -y && apt-get install -y \
	python2.7 \
	git \
	vim \
	dirmngr \
#install katoolin
	&& git clone https://github.com/LionSec/katoolin.git \
	&& cp katoolin/katoolin.py /usr/bin/katoolin \
	&& sed -i -e 's/pgp.mit.edu/pool.sks-keyservers.net/g' katoolin/katoolin.py

WORKDIR /katoolin
