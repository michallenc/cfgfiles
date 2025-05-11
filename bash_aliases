alias python=python3
alias nv=nvim
alias ndev='nix develop'

if [ -f /usr/local/bin/gitbmerge ]; then
    . /usr/local/bin/gitbmerge
fi

if [ -f /usr/local/bin/glog ]; then
    . /usr/local/bin/glog
fi

if [ -f /usr/local/bin/mmake ]; then
    . /usr/local/bin/mmake
fi


export PYSUPSICTRL=~/Michal/projects/pysimcoder/pysimCoder
