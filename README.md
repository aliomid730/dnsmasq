[![Docker Image CI](https://github.com/aliomid730/cacti/actions/workflows/docker-image.yml/badge.svg)](https://github.com/aliomid730/cacti/actions/workflows/docker-image.yml)

# dnsmasq
dnsmasq is a lightweight DNS server. It is intended to provide DNS service to a LAN.
Dnsmasq accepts DNS queries and either answers them from a small, local, cache or forwards them to a real, recursive, DNS server.

## Usage
The configuration is all handled using [dnsmasq.conf](https://raw.githubusercontent.com/aliomid730/dnsmasq/main/dnsmasq.conf), if you want to bring changes you can edit that file and then rebuild the image.
The command below runs dnsmasq on port 53 udp and tcp and sets the hostname and the container name to dnsmasq and load the configuration as a volume to /etc/dnsmasq.conf.

```
docker run -d --name dnsmasq --hostname dnsmasq -p 53:53/udp -p 53:53/tcp -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf --restart always hashimi/dnsmasq:1.0
```
