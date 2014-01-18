from	joshjdevl/docker-opencv

RUN apt-get update && apt-get install -y git gtk+-2.0
RUN mkdir -p /opensift && cd /opensift && git clone https://github.com/robwhess/opensift.git
RUN apt-get install -y doxygen
RUN cd /opensift/opensift && make

RUN apt-get -y install wget
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd && echo "root:josh" | chpasswd

