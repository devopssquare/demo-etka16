#!/bin/bash

set -eu

sudo=/usr/bin/sudo
test -x $sudo || sudo=

if $sudo docker ps 2>/dev/null | grep -q 'CONTAINER ID'
   then echo "Docker is up and running"
   else echo "Docker is not running!" >&2
        exit 1
fi