#!/usr/bin/env bash

for dir in */*; do
	port upgrade "${dir##*/}" && port install "${dir##*/}"
	port livecheck "${dir##*/}"
done
