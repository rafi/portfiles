#!/usr/bin/env bash

for dir in */*; do
	port="${dir##*/}"
	echo ":: ${port}"
	port upgrade "${port}" && port install "${port}"
	port livecheck "${port}"
done
