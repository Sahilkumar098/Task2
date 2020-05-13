FROM centos:latest
COPY jenkins.repo /etc/yum.repos.d/ 
RUN yum install jenkins -y
RUN yum install java-11-openjdk.x86_64 -y
RUN yum install curl -y
RUN yum install php -y
RUN yum install python36 -y
RUN yum install /sbin/service -y
RUN yum install git -y
RUN echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN chroot /host /bin/bash
ENTRYPOINT /etc/rc.d/init.d/jenkins start -DEFOREGROUND && bin/bash


