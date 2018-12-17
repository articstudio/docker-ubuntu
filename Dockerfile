FROM phusion/baseimage
MAINTAINER Artic <developers@articstudio.com>

# Update dependencies
RUN apt-get update; \
    apt-get install -qy curl pkg-config python-software-properties python g++ make software-properties-common apt-transport-https ca-certificates software-properties-common; \
    apt-get clean; \
    apt-get autoremove; \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -; \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    apt-get update; \
    apt-get install -y docker-ce;

CMD ["bash"]
