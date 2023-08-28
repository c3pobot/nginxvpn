FROM nginx:stable-alpine3.17-slim
RUN apk add -U --no-cache wireguard-tools openssh
RUN adduser -h /home/scuba -s /bin/sh -D scuba
COPY ./scripts /docker-entrypoint.d
