FROM centos:centos8

# Handle EOL of CentOS Linux 8 (https://www.centos.org/centos-linux-eol/)
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-* &&\
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*

# Update packages
RUN yum -y update && yum -y upgrade && yum -y install automake autoconf libtool make icu libicu-devel libxml2-devel libuuid-devel fuse-devel net-snmp-devel git python3 && alternatives --set python /usr/bin/python3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
