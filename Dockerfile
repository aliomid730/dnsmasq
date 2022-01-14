FROM alpine:latest
MAINTAINER Sayyed Ali Agha Hashimi <ali.omid730@gmail.com>
RUN apk add --no-cache dnsmasq
EXPOSE 53/udp 53/tcp
ENTRYPOINT ["dnsmasq", "-q", "--no-daemon"]
