FROM kalilinux/kali-linux-docker

ENV DEBIAN_FRONTEND noninteractive

RUN	apt-get update -y && apt-get install -y \
	curl \
	gcc \
	vim \
	make \
	ruby-full \
	&& curl -L http://xrl.us/installperlnix

ENTRYPOINT bash
