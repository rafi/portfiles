#!/usr/bin/env bash

for dir in */*; do
	port="${dir##*/}"
	[ "$port" = "httpstat" ] && port="py-${port}"
	echo -n ":: ${port}"
	msg=$(port livecheck "${port}")
	echo " ${msg}"
done
