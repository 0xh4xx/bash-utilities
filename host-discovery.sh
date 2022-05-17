#!/bin/bash

for i in $(seq 2 254);do
	timeout 1 bash -c "ping -c 1 192.168.1.$i &>/dev/null"  && echo "[*] Active - Host 192.168.1.$i" &
done; wait
