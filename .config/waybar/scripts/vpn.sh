#!/usr/bin/env bash

if [[ "${1}" == "status" ]]; then
	while true; do
		if nmcli -t con show MS | grep -qi 'VPN connected'; then
			echo "" #this is the locked padlock from fontawesome
		else
			echo "" #this is the open padlock from fontawesome
		fi

		sleep 1
	done

elif [[ "${1}" == "toggle" ]]; then
        if nmcli -t con show MS | grep -qi 'VPN connected'; then
                nmcli con down MS
        else
                nmcli con up MS
        fi
fi

