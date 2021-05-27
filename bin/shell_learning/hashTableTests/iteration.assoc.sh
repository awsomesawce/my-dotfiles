#!/usr/bin/env bash
# This is an example of iterating over an Associative Array aka a "Hash Table"
# NOTE: Only works in __BASH__.

typeset -A a=([key1]=value1 [key2]=value2)

# just keys
printf '%s\n' "${!a[@]}"

# just values
printf '%s\n' "${a[@]}"

# keys and values
for key in "${!a[@]}"; do
	printf '%s => %s\n' "$key" "${a[$key]}"
done
