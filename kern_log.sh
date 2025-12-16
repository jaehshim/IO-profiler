#!/bin/bash

#sudo sh -c 'cat /dev/null > /var/log/kern.log'
#sudo sh -c 'tail -f /var/log/kern.log'

sudo truncate -s 0 /var/log/kern.log
sudo stdbuf -oL -eL tail -n0 -F /var/log/kern.log
