#!/bin/bash
#docker run --rm --name rnode-client --network host -it -v $HOME/rholang:/rholang rchain/rnode:latest --grpc-port 40402 keygen /rholang

#!/bin/bash
docker run --rm --name rnode-client \
    --network host -it \
    -v $HOME/rholang:/rholang \
    rchain/rnode:latest \
    --grpc-port 40402 deploy --private-key 61e594124ca6af84a5468d98b34a4f3431ef39c54c6cf07fe6fbf8b079ef64f6 --phlo-limit 9999999 --phlo-price 1 /rholang/skiplist.rho