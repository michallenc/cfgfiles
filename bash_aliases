alias python=python3
alias nv=nvim
alias ndev='nix develop'
alias glog='git log --oneline'
alias msetup='meson setup --wipe build'
alias mbuild='meson compile -C build'
alias mtest='meson test -C build'
alias mcov='msetup -Db_coverage=true && mtest && ninja -C build coverage-html'
alias bat=batcat

if [ -f /usr/local/bin/gitbmerge ]; then
    . /usr/local/bin/gitbmerge
fi

if [ -f /usr/local/bin/mmake ]; then
    . /usr/local/bin/mmake
fi


export PYSUPSICTRL=~/Michal/projects/pysimcoder/pysimCoder

# fzf and bat configuration

export FZF_CTRL_T_OPTS="
  --walker-skip .git,.coverage*,.venv,.pytest_cache,__pycache__,.mypy_cache,.o,*.O,*.bin,*.a,*.dat,*.exe
  --preview 'batcat -n --color=always {}'
  --preview-window='right,75%'
  --bind 'ctrl-l:change-preview-window(down|hidden|)'"
export FZF_DEFAULT_OPTS="--layout reverse --info inline --style minimal --height 99%"

eval "$(fzf --bash)"
eval "$(zoxide init bash)"
