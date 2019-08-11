FROM ubuntu:bionic

RUN apt-get update -q && apt-get install -qy software-properties-common rsync mount tar sudo systemd iputils-ping netcat iproute2
RUN find /etc/systemd/system -type l -delete && find /lib/systemd/system/multi-user.target.wants -type l -delete && find /lib/systemd/system/sysinit.target.wants -type l -delete
RUN add-apt-repository ppa:gluster/glusterfs-6 && apt-get update -q && apt-get install -qy glusterfs-server

EXPOSE 2222 111 245 443 24007 2049 8080 6010 6011 6012 38465 38466 38468 38469 49152 49153 49154 49156 49157 49158 49159 49160 49161 49162

CMD /sbin/init
