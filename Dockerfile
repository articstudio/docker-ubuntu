FROM phusion/baseimage
MAINTAINER Artic <developers@articstudio.com>

# Update dependencies
RUN apt-get update; \
    apt-get install -qy curl pkg-config python-software-properties python g++ make software-properties-common docker.io; \
    apt-get clean; \
    apt-get autoremove;

CMD ["bash"]
