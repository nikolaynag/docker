#!/bin/bash
docker run -it --rm -e LOCAL_USER_ID=$(id -u) -v $(pwd):/go my/golang
