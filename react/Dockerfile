FROM my/node

RUN set -ex \
    && npm install -g \ 
        create-react-app react-scripts

RUN set -ex \
    && create-react-app /opt/react-app-template \
    && rm -rf /opt/react-app-template/node_modules

EXPOSE 3000
WORKDIR /home/node
CMD [ "/bin/bash" ]
