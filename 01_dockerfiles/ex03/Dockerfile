FROM debian

RUN apt-get update -y && apt-get install -y \
	git \
	wget \
	gcc

WORKDIR $HOME/local
RUN wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz \
	&& tar -xzvf go1.8.linux-amd64.tar.gz

ENV GOROOT=$HOME/local/go
ENV	GOPATH=$HOME/gogs
ENV	PATH=$PATH:$GOROOT/bin:$GOPATH/bin

WORKDIR $GOPATH/src/github.com/gogits

RUN git clone --depth=1 -b develop https://github.com/gogits/gogs \
	&& go get -u -tags "sqlite" github.com/gogits/gogs
WORKDIR $GOPATH/src/github.com/gogits/gogs
RUN go build -tags "sqlite"

RUN mkdir $GOPATH/src/github.com/gogits/logs \
	&& mkdir /root/gogs-repositories \
	&& mkdir /root/data

EXPOSE 3000 22

ENV USER=root

CMD ["./gogs", "web"]
