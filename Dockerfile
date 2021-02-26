FROM centos:centos8

RUN yum -y update && yum -y upgrade && yum -y install automake autoconf libtool make icu libicu-devel libxml2-devel libuuid-devel fuse-devel net-snmp-devel git python36

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
