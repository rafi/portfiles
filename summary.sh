#!/usr/bin/env bash

all_installed=$(port echo installed)

for dir in */*; do
	port="${dir##*/}"
	[ "$port" = "httpstat" ] && port="py-${port}"
	version=$(echo "$all_installed" | grep -im1  "$port" | sed 's/^.*@//')

	echo -n ":: ${port} --- "
	if test -n "$version"; then
		echo -e "${version}"
	else
		echo -e "*** N/A ***"
	fi
done
