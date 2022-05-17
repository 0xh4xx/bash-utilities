#!/bin/bash

if [[ $# -gt 0 ]]; then
	echo "correcto"
	for port in $(seq 1 65535); do
		timeout 1 bash -c "echo '' > /dev/tcp/$1/$port" 2>/dev/null && echo "[*] Open - Port $port" &
	done; wait

else
	echo -e "\n\tUse: <ip_address>\n"
	exit 1
fi
