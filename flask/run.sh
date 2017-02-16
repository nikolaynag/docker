#!/bin/bash
docker run -it --rm -p 5000:5000 -u 1000:1000 -v /home/nmn/hightech/flask:/home/flask my/flask
