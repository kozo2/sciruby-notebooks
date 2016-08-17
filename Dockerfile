FROM continuumio/miniconda

MAINTAINER Kozo Nishida <knishida@riken.jp>

RUN apt install -y ruby ruby-dev make libtool autoconf g++
RUN ln -s /usr/bin/libtoolize /usr/bin/libtool # See https://github.com/zeromq/libzmq/issues/1385

RUN ldconfig /var/lib/gems/2.3.0/gems/rbczmq-1.7.9/ext/rbczmq/dst/lib && gem install rbczmq
RUN gem install iruby pry
RUN iruby register
