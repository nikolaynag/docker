FROM my/node

RUN set -ex \
    && curl https://install.meteor.com/ | sh

ENV MONGO_URL=mongodb://mongo:27017/meteor

EXPOSE 3000

CMD ["/bin/bash"]
