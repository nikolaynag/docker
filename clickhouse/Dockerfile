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
    && apt-key adv --keyserver keyserver.ubuntu.com --recv E0C56BD4 \
    && echo "deb http://repo.yandex.ru/clickhouse/xenial stable main" | tee /etc/apt/sources.list.d/clickhouse.list \
    && apt-get update \
    && apt-get install -y clickhouse-server-common clickhouse-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN chown -R metrika /etc/clickhouse-server/

USER metrika

EXPOSE 9000 8123 9009

ENV CLICKHOUSE_CONFIG /etc/clickhouse-server/config.xml

CMD ["/usr/bin/clickhouse-server", "--config=${CLICKHOUSE_CONFIG}"]
