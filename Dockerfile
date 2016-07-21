FROM continuumio/miniconda

MAINTAINER Kozo Nishida <knishida@riken.jp>

RUN apt install -y ruby ruby-dev make libtool autoconf g++
RUN ln -s /usr/bin/libtoolize /usr/bin/libtool # See https://github.com/zeromq/libzmq/issues/1385

RUN gem install --no-document daru iruby nyaplot pry rbczmq
RUN iruby register
