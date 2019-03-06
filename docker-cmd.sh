#!/bin/sh
set -e

crond -s /var/spool/cron/crontabs -f -L /var/log/cron/cron.log "$@"
