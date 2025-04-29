FROM ubuntu:24.04
WORKDIR /root

COPY --chmod=755 ./run/node-init.sh ./run/chroot-bootstrap.sh /root/

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["chroot-bootstrap.sh"]

#ENTRYPOINT ["/bin/bash", "-c"]
