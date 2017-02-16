#!/bin/bash
docker run -it --rm -u 1000:1000 -v /home/nmn/hightech/docker_homes/rust:/home/rust/src my/rust
