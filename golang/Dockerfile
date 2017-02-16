FROM ubuntu:16.04

# gcc for cgo
RUN set -ex \
    && apt-get update \
    && apt-get install -y \
        curl \
    && apt-get install -y --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
		pkg-config \
        git-core \ # for go get
    && apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

ENV GOLANG_VERSION 1.7.5
ENV GOLANG_DOWNLOAD_URL https://golang.org/dl/go$GOLANG_VERSION.linux-amd64.tar.gz
ENV GOLANG_DOWNLOAD_SHA256 2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3

RUN set -ex \ 
    && curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz \
	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - \
	&& tar -C /usr/local -xzf golang.tar.gz \
	&& rm golang.tar.gz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
