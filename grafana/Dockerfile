FROM my/base

ENV GRAFANA_DOWNLOAD_URL https://grafanarel.s3.amazonaws.com/builds/grafana-4.1.2-1486989747.linux-x64.tar.gz

RUN set -ex \
    && curl -fsSL "$GRAFANA_DOWNLOAD_URL" -o grafana.tar.gz \
    && mkdir /opt/grafana \
    && tar -C /opt/grafana --strip-components=1 -xf grafana.tar.gz \
    && rm grafana.tar.gz

RUN set -ex \
    && groupadd --gid 1000 grafana \
    && useradd --uid 1000 --gid grafana --shell /bin/bash --create-home grafana \
    && chown -R grafana:grafana /opt/grafana 

USER grafana
EXPOSE 3000

WORKDIR /opt/grafana

CMD ["/opt/grafana/bin/grafana-server", "web"]
