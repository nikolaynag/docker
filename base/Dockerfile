FROM ubuntu:16.04

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
        curl \
        xz-utils \
        man-db \
        vim-nox \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]
