FROM alpine:3.20

RUN apk update && \
    apk add --no-cache curl jq

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]