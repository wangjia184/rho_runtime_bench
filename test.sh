#!/bin/bash
docker run --rm --name rnode-client \
    --network host -it \
    -v $HOME/rholang:/rholang:ro \
    rchain/rnode:latest \
    --grpc-port 40402 eval /rholang/test.rho