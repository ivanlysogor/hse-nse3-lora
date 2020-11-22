#!/bin/bash

sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
apt-get update -y

# install packages 
apt-get -yq install mercurial iperf g++ cmake pkg-config autoconf cvs bzr unrar
