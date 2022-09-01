FROM alpine:3
RUN apk add --no-cache logrotate && rm /etc/logrotate.d/acpid
CMD ["logrotate", "-d", "/etc/logrotate.conf"]