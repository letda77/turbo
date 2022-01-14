#!/bin/bash

POOL=https://server1.whalestonpool.com
WALLET=EQDxb4P9Rn74K6YufjXKulboKUys5Xd4lHJjv7D_OPc6OUGg
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
