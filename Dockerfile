ARG FEDORARELEASE=41
FROM registry.fedoraproject.org/fedora:${FEDORARELEASE}
RUN dnf -y distro-sync && dnf -y --setopt install_weak_deps=0 install doge && microdnf clean all
ENTRYPOINT ["/usr/bin/doge"]
