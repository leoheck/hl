#!/bin/bash

dir=$(dirname $0)

export PATH=$dir/bin/1.62/i686/centos/5.5/:$PATH
export PATH=$dir/hl_bin/:$PATH
export PATH=$dir/quality/:$PATH
export PATH=$dir/scripts/:$PATH

export MANPATH=$dir:$MANPATH

