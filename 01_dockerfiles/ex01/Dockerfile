FROM debian

WORKDIR home/teamspeak3

RUN apt-get update -y && apt-get install bzip2 wget -y \
	&& wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 \
	&& bunzip2 *.bz2 \
	&& tar -xvf *.tar \
	&& useradd ts3

EXPOSE 9987/udp 30033 10011

CMD ["sh", "teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]
