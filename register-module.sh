#!/bin/bash
#
# Is this in GIT anywhere?
# git submodule add x path
#
# Nope, this isn't meant to be perfect

for a
do
	[ -d "$1" ] || continue
	[ -d "$1/.git" ] || continue
	[ -f "$1/.git/config" ] || continue
	
	read url < <(exec sed -n 's/^[[:space:]]*url = //p' "$1/.git/config")

	[ -n "$url" ] || continue

	git submodule add "$url" "${1%/}"
done

