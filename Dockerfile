FROM debian:wheezy
MAINTAINER Brad Gignac <bgignac@bradgignac.com>

ENV APP_PATH /var/applications/kubernetes-demo
ENV RACK_ENV production
EXPOSE 8000

RUN apt-get update && \
    apt-get install -y build-essential libssl-dev libreadline-dev ruby ruby-dev && \
    apt-get clean

ADD . $APP_PATH
WORKDIR $APP_PATH

RUN scripts/bootstrap
RUN scripts/version
CMD scripts/start-server
