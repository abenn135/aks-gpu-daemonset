FROM ubuntu:24.04

COPY ./run/node-init.sh run/

ENTRYPOINT ["/usr/sbin/chroot", "/hostfs", "/bin/bash", "-c"]
CMD ["./run/node-init.sh"]

#ENTRYPOINT ["/bin/bash", "-c"]
