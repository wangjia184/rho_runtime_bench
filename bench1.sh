#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo $CURRENT_DIR;

sudo docker run --rm --name rnode-client \
    --network host -it \
    -v $CURRENT_DIR:/rholang:ro \
    rchain/rnode:v0.10.2 \
    --grpc-port 40402 eval /rholang/bench1.rho