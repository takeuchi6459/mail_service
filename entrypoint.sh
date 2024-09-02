#!/bin/bash
postfix start
postmap /etc/virtual_domains
postmap /etc/virtual_users
cp /etc/resolv.conf /var/spool/postfix/etc/resolv.conf
postfix reload
tail -f /dev/null

