FROM ruby:2.1.5

MAINTAINER Rodrigo Saito <rodrigo.saito@gmail.com>

# Add options to gemrc
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc

RUN apt-get update && \
    apt-get install -y xvfb qt5-default libqt5webkit5-dev && \
    apt-get autoremove -y && \
    apt-get clean all

