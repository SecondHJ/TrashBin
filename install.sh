#!/bin/bash
# install del

if [ "$(whoami)" != 'root' ]
then
    echo "No permission"
else
    cp lib/del /usr/local/bin && chmod +x /usr/local/bin/del
fi

# cron
echo "  0  0  *  *  * $(whoami)  rm -rf ~/trash/*"  >> /etc/crontab


