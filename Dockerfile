FROM jenkins:1.596
MAINTAINER Alan LaMielle <alan.lamielle+github@gmail.com>

USER root
RUN apt-get update && apt-get install sudo docker.io golang make bzr mercurial vim -y
ADD sudoers /etc/
USER jenkins
