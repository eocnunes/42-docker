FROM debian

ENV DEBIAN_FRONTEND noninteractive

RUN	apt-get update -y && apt-get install -y \
	python \
	python-dev \
	python-pip \
	python-virtualenv \
	vim \
	git \
	&& rm -rf /var/lib/apt/lists/*

CMD ["bash"]
