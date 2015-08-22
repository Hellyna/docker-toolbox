FROM debian:jessie
MAINTAINER Hellyna NG <hellyna@hellyna.com>

ENV DOCKER_HOST="unix:///media/root/run/docker.sock"
RUN ln -svf /media/root/usr/bin/docker /usr/local/bin/docker

ENV HOME /root
USER root
WORKDIR /root

RUN DEBIAN_FRONTEND='noninteractive' && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
      ack-grep \
      ctags \
      curl \
      git \
      rake \
      ruby \
      vim && \
    curl -L https://raw.githubusercontent.com/carlhuda/janus/master/bootstrap.sh | bash
