FROM adferrand/backuppc

RUN apk update && apk --no-cache add samba dcron

#RUN apk update && apk --no-cache add samba dcron && rm -rf /var/cache/apk/*

#RUN mkdir -p /var/log/cron && mkdir -m 0644 -p /var/spool/cron/crontabs && touch /var/log/cron/cron.log && mkdir -m 0644 -p /etc/cron.d

#COPY /docker-entry.sh /docker-entry.sh
#COPY /docker-cmd.sh /docker-cmd.sh

#ENTRYPOINT ["/docker-entry.sh"]
#CMD ["/docker-cmd.sh"]
#CMD ["crond", "-s", "/var/spool/cron/crontabs", "-f", "-L", "/var/log/cron/cron.log", "$@"]

#CMD ["crond", "-f"]
