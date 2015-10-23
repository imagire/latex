FROM ubuntu:14.04
MAINTAINER takashi imagire "imagire@gmail.com"

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:texlive-backports/ppa
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y texlive
RUN apt-get install -y texlive-lang-cjk xdvik-ja texlive-fonts-recommended

RUN apt-get -y install make
