# use the ubuntu base image provided by dotCloud
FROM ubuntu:12.04
#

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

# Set the env variable DEBIAN_FRONTEND to noninteractive
ENV DEBIAN_FRONTEND noninteractive

# Installing the environment required: xserver, xdm, flux box, roc-filer and ssh
RUN apt-get install -y xpra rox-filer ssh pwgen xserver-xephyr xdm fluxbox
RUN apt-get install -y gedit
RUN apt-get install -y gcc
# install memcache
