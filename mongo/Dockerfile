FROM ubuntu:16.04

ENV MONGO_MAJOR 3.4
ENV MONGO_PACKAGE mongodb-org

RUN set -ex \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6 \
    && echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/$MONGO_MAJOR multiverse" | tee /etc/apt/sources.list.d/mongodb-org.list \
    && apt-get update \
    && apt-get install -y mongodb-org \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN set -ex \
    && mv /etc/mongod.conf /etc/mongod.conf.orig \
    && rm -rf /var/lib/mongodb \
    && mkdir -p /data/db /data/configdb \
    && chown -R mongodb:mongodb /data/db /data/configdb

EXPOSE 27017

CMD ["mongod", "--smallfiles"]
