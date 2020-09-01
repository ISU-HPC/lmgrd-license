#FROM isuhpc/centos-base-systemd
FROM centos:7

RUN yum install -y redhat-lsb-core
RUN curl  http://registrationcenter-download.intel.com/akdlm/irc_nas/tec/16317/l_isl_server_p_2.10.0.016.tgz | tar xz
WORKDIR /l_isl_server_p_2.10.0.016
RUN ./install.sh -s --install_dir /opt/intel --accept_eula
RUN touch /opt/intel/licenseserver/server.lic
#RUN touch /opt/intel/licenseserver/lmgrd.log


WORKDIR /opt/intel/licenseserver/
CMD sleep infinity
#CMD /opt/intel/licenseserver/lmgrd -c /opt/intel/licenseserver/server.lic -l /dev/stdout -z

