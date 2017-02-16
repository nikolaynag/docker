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

RUN set -ex \ 
    && apt-get update \
    && apt-get install -y \
        python-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install Flask

RUN set -ex \
    && groupadd --gid 1000 flask \
    && useradd --uid 1000 --gid flask --shell /bin/bash --create-home flask

WORKDIR /home/flask
EXPOSE 5000

CMD [ "/bin/bash" ]
