alias python=python3
alias nv=nvim
alias ndev='nix develop'
alias glog='git log --oneline'
alias msetup='meson setup --wipe build'
alias mbuild='meson compile -C build'
alias mtest='meson test -C build'
alias mcov='msetup -Db_coverage=true && mtest && ninja -C build coverage-html'

if [ -f /usr/local/bin/gitbmerge ]; then
    . /usr/local/bin/gitbmerge
fi

if [ -f /usr/local/bin/mmake ]; then
    . /usr/local/bin/mmake
fi


export PYSUPSICTRL=~/Michal/projects/pysimcoder/pysimCoder
