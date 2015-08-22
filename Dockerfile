FROM debian:jessie
MAINTAINER Hellyna NG <hellyna@hellyna.com>

ENV DOCKER_HOST="unix:///media/root/run/docker.sock"

ENV HOME /root
USER root
WORKDIR /root
COPY run /root/run
RUN /root/run
