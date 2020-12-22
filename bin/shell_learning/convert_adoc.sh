#!/usr/bin/env bash
# This will attempt to convert asciidoc to html simply
echo "This will convert the adoc file into html and move it to ./html"
if $1='--help'
then
	echo "type the name of file you want to convert as the argument"
else 
	asciidoctor -b html5 $1
fi
exit 0
# Let's hope this works!
# This is not working atm
