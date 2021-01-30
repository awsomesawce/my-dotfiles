#!/bin/bash
# Simple example of an AND statement inside
# an if statement

echo "Enter username"
read -r username
echo "Enter password"
read -r password

if [[ ( $username == "admin" && $password == "secret" ) ]]; then
    echo "Valid user"
    echo "You are the greatest!"
    touch ~/good_job
else
    echo "invalid user"
fi
exit 0
