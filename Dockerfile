FROM ubuntu:12.04

MAINTAINER Josh Hawn josh.hawn@docker.com

RUN apt-get update && apt-get install -y dnsmasq

EXPOSE 53/udp

ENTRYPOINT ["/usr/sbin/dnsmasq", "--no-daemon"]
