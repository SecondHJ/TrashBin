#!/bin/bash
# install del

if [ "$(whoami)" != 'root' ]
then
    echo "No permission"
else
    cp lib/delete.py /usr/local/lib
    cp lib/del >> /usr/local/bin && chmod +x /usr/local/bin/del
fi


