#!/bin/bash

# clone bake
hg clone http://code.nsnam.org/bake bake
export BAKE_HOME=`pwd`/bake
export PATH=$PATH:$BAKE_HOME
export PYTHONPATH=$PYTHONPATH:$BAKE_HOME

# intall dce
mkdir ns3
cd ns3
bake.py configure -e ns-3.29
bake.py download
git clone https://github.com/signetlabdei/lorawan source/ns-3.29/src/lorawan
bake.py build -vvv

# finish

whoami
printenv

