FROM kalilinux/kali-linux-docker

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install -y \	
	vim \
	metasploit-framework \
	nfs-common \
	cifs-utils \
	snmp \
	x11-apps \
	imagemagick

ENTRYPOINT bash
