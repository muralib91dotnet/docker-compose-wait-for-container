#!/bin/sh
# echo "Hello, my name is Shiny! Who am I talking to?"
# echo Type your name to continue:
# read name
echo --------------------------
echo Hello World
dockerize -wait tcp://mysql:3306 -timeout 300s -wait-retry-interval 30s && cd /usr/local/bin && ./sayhello.sh
echo --------------------------

# exec "$@"