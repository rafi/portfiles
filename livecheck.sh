#!/usr/bin/env bash

port livecheck entr fzy tmux-mem-cpu-load icdiff mpc ncmpcpp pass sxiv

for dir in */*; do
	port="${dir##*/}"
	[ "$port" = "httpstat" ] && port="py-${port}"
	[ "$port" = "p5-textbidi" ] && port="p5-text-bidi"
	port livecheck "${port}"
done
