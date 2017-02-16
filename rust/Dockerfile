FROM ubuntu:16.04

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
        git-core \
    && apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

RUN set -ex \
    && groupadd --gid 1000 rust \
    && useradd --uid 1000 --gid rust --shell /bin/bash --create-home rust

RUN set -ex \
  && su -l rust /bin/bash -c 'curl https://sh.rustup.rs -sS --fail | sh -s -- -y'

RUN set -ex \
  && su -l rust /bin/bash -c 'mkdir /home/rust/src'

WORKDIR /home/rust/src
ENV PATH="/home/rust/.cargo/bin:${PATH}"
CMD [ "/bin/bash" ]
