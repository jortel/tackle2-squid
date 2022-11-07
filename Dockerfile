FROM registry.access.redhat.com/ubi9/ubi-minimal
RUN microdnf -y install \
  squid \
 && microdnf -y clean all
ENTRYPOINT ["/usr/sbin/squid","--foreground"]

