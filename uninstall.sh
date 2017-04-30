#!/bin/bash

if [ "$(whoami)" != 'root' ]
then
    echo "No permission"
else
    rm -rf /usr/local/bin/del && rm -rf ~/trash
fi