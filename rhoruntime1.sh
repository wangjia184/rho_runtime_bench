#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo $CURRENT_DIR;

sudo docker run -ti --privileged \
    -v $CURRENT_DIR/bench1.rho:/source.rho \
    wangjia184/rho_runtime:0.0.2 /source.rho