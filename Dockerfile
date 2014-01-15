FROM ubuntu:12.04
MAINTAINER Stan Bondi <stan@fixate.it>

# Install dependencies
ADD install_deps.sh /opt/fixate/install_deps
RUN /opt/fixate/install_deps

# Install mri
ADD install_mri.sh /opt/fixate/install_mri
RUN PREFIX=/usr/local/ruby /opt/fixate/install_mri

ENV PATH /usr/local/ruby/bin:$PATH
