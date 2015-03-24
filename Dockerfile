FROM jenkins:1.596
MAINTAINER Alan LaMielle <alan.lamielle+github@gmail.com>

USER root
RUN apt-get update && apt-get install sudo docker.io golang make bzr mercurial vim python-dev python-pip python-virtualenv libssl-dev -y
RUN ln -s /usr/lib/x86_64-linux-gnu/libssl.so.1.0.0 /usr/lib/x86_64-linux-gnu/libssl.so.10
RUN ln -s /usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 /usr/lib/x86_64-linux-gnu/libcrypto.so.10
ADD sudoers /etc/
ADD https://storage.googleapis.com/golang/go1.4.1.linux-amd64.tar.gz /usr/local/
RUN cd /usr/local && tar -xvf go1.4.1.linux-amd64.tar.gz && rm go1.4.1.linux-amd64.tar.gz && mv go go1.4.1 && ln -s go1.4.1 go
USER jenkins
