FROM registry.access.redhat.com/ubi8/ubi:latest

RUN yum update -y && \
    dnf copr enable -y @wildfly/wildfly && \
    yum install -y wildfly && \
    yum clean all

EXPOSE 8080

CMD ["/usr/share/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]