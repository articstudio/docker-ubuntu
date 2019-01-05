FROM phusion/baseimage
MAINTAINER Artic <developers@articstudio.com>

ENV DEBIAN_FRONTEND noninteractive

# Update / Install dependencies
RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -qy curl pkg-config python-software-properties python g++ gcc make software-properties-common docker.io; \
    apt-get clean; \
    apt-get autoremove; \
    && rm -fr /var/lib/apt/lists/*;

CMD ["bash"]
