ARG FEDORARELEASE=42
FROM registry.fedoraproject.org/fedora-minimal:${FEDORARELEASE}
RUN microdnf -y distro-sync && microdnf -y --setopt install_weak_deps=0 install doge && microdnf clean all
ENTRYPOINT ["/usr/bin/doge"]
