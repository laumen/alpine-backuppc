FROM adferrand/backuppc:4.3.0-3

RUN apk update && apk upgrade && apk --no-cache --update add dcron

RUN mkdir -p /var/log/cron && mkdir -m 0644 -p /var/spool/cron/crontabs && touch /var/log/cron/cron.log && mkdir -m 0644 -p /etc/cron.d

COPY /docker-cmd.sh /

CMD ["/docker-cmd.sh"]
