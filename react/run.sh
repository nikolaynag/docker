#!/bin/bash
docker run -it --rm -p 3000:3000 -u 1000:1000 -v /home/nmn/hightech/docker_homes/node:/home/node my/react
