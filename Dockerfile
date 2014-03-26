# use the ubuntu base image provided by dotCloud
FROM ubuntu
#
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf
RUN apt-get update
# install gedit
RUN apt-get install -y gedit
# install memcache
