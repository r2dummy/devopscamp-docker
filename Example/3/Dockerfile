FROM centos:7
ARG PACKER_VERSION=1.2.3
RUN yum install -y \
            epel-release yum-plugin-ovl wget unzip rsync openssh openssh-clients && \
        yum install -y python-pip && \
        yum clean all RUN wget -q https://releases.hashicorp.com/...${PACKER_VERSION}_linux_amd64.zip && \
        unzip -q packer_${PACKER_VERSION}_linux_amd64.zip -d /bin/ && \
        rm -f packer_${PACKER_VERSION}_linux_amd64.zip
RUN pip install -U ansible ansible-modules-hashivault
RUN useradd packer
USER packer
ENV USER packer
ENTRYPOINT ["/bin/packer"]
CMD ["--version"]
