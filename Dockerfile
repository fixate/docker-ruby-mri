FROM ubuntu:12.04
MAINTAINER Stan Bondi <stan@fixate.it>

# Install dependencies
ADD ./build/ /build/mri/
RUN /build/mri/prepare

# Install mri
RUN PREFIX=/usr/local/ruby TAG=2.1.0 /build/mri/build_mri

ENV PATH /usr/local/ruby/bin:$PATH
