# use the ubuntu base image provided by dotCloud
FROM ubuntu

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list


# install gedit
RUN apt-get install -y gedit
# install memcache
