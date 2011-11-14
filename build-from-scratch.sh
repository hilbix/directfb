#!/bin/bash
#
# No, this is not complete yet

b()
{
( cd "$1" && shift && "$@"; ) || exit 1
}

sudo apt-get install pkg-config 

b core/flux ./autogen.sh
b core/flux make
b core/flux sudo make install

b core/DirectFB ./autogen.sh
b core/DirectFB make
