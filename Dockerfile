FROM alpine:latest
RUN apt-get install -y yum-utils \
                    device-mapper-persistent-data \
                    lvm2
RUN yum-config-manager \
--add-repo \
https://download.docker.com/linux/centos/docker-ce.repo

RUN apt-get install -y http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.55-1.el7.noarch.rpm

RUN apt-get install docker-ce

CMD /bin/bash
