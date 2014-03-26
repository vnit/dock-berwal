# use the ubuntu base image provided by dotCloud
FROM ubuntu:12.04
#
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get install -y yum
RUN yum -y install dnsmasq

# /etc/hosts values
RUN echo 'address="/dbhost/127.0.0.1"' >> /etc/dnsmasq.d/0hosts
RUN echo 'address="/jmshost/127.0.0.1"' >> /etc/dnsmasq.d/0hosts
RUN echo 'address="/smtphost/127.0.0.1"' >> /etc/dnsmasq.d/0hosts

# dnsmasq configuration
RUN echo 'listen-address=127.0.0.1' >> /etc/dnsmasq.conf
RUN echo 'resolv-file=/etc/resolv.dnsmasq.conf' >> /etc/dnsmasq.conf
RUN echo 'conf-dir=/etc/dnsmasq.d' >> /etc/dnsmasq.conf

# google dns
RUN echo 'nameserver 8.8.8.8' >> /etc/resolv.dnsmasq.conf
RUN echo 'nameserver 8.8.4.4' >> /etc/resolv.dnsmasq.conf

RUN apt-get update
# install gedit
RUN apt-get install -y gedit
# install memcache
