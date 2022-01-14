FROM alpine:latest
MAINTAINER Sayyed Ali Agha Hashimi <ali.omid730@gmail.com>
RUN apk add --no-cache dnsmasq
EXPOSE 53/udp 53/tcp
CMD ["dnsmasq", "-q", "--no-daemon"]
