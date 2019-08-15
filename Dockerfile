FROM ubuntu:bionic

RUN apt-get update -q && \
  DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -qy
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy \
  software-properties-common \
  rsync \
  mount \
  tar \
  sudo \
  iputils-ping \
  netcat \
  iproute2
RUN add-apt-repository ppa:gluster/glusterfs-5 && \
  apt-get update -q && \
  DEBIAN_FRONTEND=noninteractive apt-get install -qy \
  glusterfs-server

EXPOSE 2222 111 245 443 24007 2049 8080 6010 6011 6012 38465 38466 38468 38469 49152 49153 49154 49156 49157 49158 49159 49160 49161 49162

CMD ["/usr/sbin/glusterd","--no-daemon","--log-level=INFO","--log-file=/dev/stdout"]
