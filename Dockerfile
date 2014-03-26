# use the ubuntu base image provided by dotCloud
FROM ubuntu:12.04
#
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

RUN apt-get update
# install gedit
RUN apt-get install -y gedit
# install memcache
