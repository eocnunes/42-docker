FROM debian

ENV DEBIAN_FRONTEND noninteractive

RUN	apt-get update && apt-get install -y \
	gcc \
	vim \
	make \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

CMD ["bash"]
