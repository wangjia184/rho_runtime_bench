#!/bin/bash

#https://rchain.atlassian.net/wiki/spaces/CORE/pages/428376065/User+guide+for+running+RNode#UserguideforrunningRNode-TipsforworkingwithRNodeinDocker
#https://github.com/JoshOrndorff/LearnRholangByExample/tree/master/00-DeveloperEnvironment

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo $CURRENT_DIR;

sudo docker rm -f rnode
sudo docker run -d --name rnode --rm \
    --net=host \
    -p 40401:40401 \
    -p 40402:40402 \
    -p 40403:40403 \
    -p 40404:40404 \
    -p 40405:40405 \
    -v $HOME/var/rnode1:/var/lib/rnode \
    -v $CURRENT_DIR:/rholang \
    -v $CURRENT_DIR/wallets.txt:/var/lib/rnode/genesis/wallets.txt:ro \
    -v $CURRENT_DIR/bonds.txt:/var/lib/rnode/genesis/bonds.txt:ro \
    zsluedem/rnode:rholang-eval-inmem run --standalone -XX:MaxRAMPercentage=80 -XX:MaxDirectMemorySize=2g
sudo docker logs -f rnode

#docker exec -ti rnode /opt/docker/bin/rnode keygen --algorithm secp256k1 --private-key-path /rholang/
#docker exec -ti rnode /opt/docker/bin/rnode keygen /rholang

#docker exec -ti rnode /opt/docker/bin/rnode deploy --private-key /rholang/rnode.key --phlo-limit 9999999 --phlo-price 1 /rholang/skiplist.rho