#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0xa5D6fC667c6dc61eA07DCB54555783bd3c57bba2
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
