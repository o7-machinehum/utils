#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
alias ls='ls --color=auto'

# General shortcuts
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# HDMI screen stuff
wlkr_hdmi_work_on() {
    xrandr --output HDMI-1 --auto
    xrandr --output HDMI-1 --above eDP-1
    sed -i 's/size = 7.0/size = 9.0/g' ~/.config/alacritty/alacritty.toml
}

wlkr_hdmi_off() {
    xrandr --output HDMI-1 --off
    sed -i 's/size = 9.0/size = 7.0/g' ~/.config/alacritty/alacritty.toml
}

alias wlkr_hdmi_tv_on='xrandr --output HDMI-1 --auto && xrandr --output HDMI-1 --same-as eDP-1'

# Start the SSH server
alias sshd-start='systemctl start sshd.service'

# CPU Power
alias wlkr_cpu_on_demand='sudo cpupower frequency-set -g ondemand'
alias wlkr_cpu_full_power='sudo cpupower frequency-set -g performance'
alias wlkr_cpu_low_power='sudo cpupower frequency-set -g powersave'
alias wlkr_cpu_speed='watch -n.1 "grep \"^[c]pu MHz\" /proc/cpuinfo"'

copy_file() {
    xclip -selection clipboard -t image/png -i $1
}

copy_screen() {
    import img.png
    xclip -selection clipboard -t image/png -i img.png
    rm img.png
}

vimscp() {
    sshpass -p blackhat scp -O root@192.168.1.107:/bin/bh . &&
    fname="${1##*/}"
    vim $fname
    sshpass -p blackhat scp -O $fname root@192.168.1.107:/$1
}

alias git-submodule-init="git submodule update --init --recursive"
alias git-submodule-update="git submodule update --recursive"

alias wlkr_ssh_ots="ssh -i ~/.ssh/git_key ots@96.126.103.186"
alias wlkr_ssh_wiki="ssh machinehum@139.162.136.197"

# alias init-ssh-key="eval '$(ssh-agent -s)' ; ssh-add ~/.ssh/git_key"
eval $(ssh-agent -s) > /dev/null ; ssh-add ~/.ssh/git_key 2>/dev/null
eval $(ssh-agent -s) > /dev/null ; ssh-add ~/.ssh/id_ed25519 2>/dev/null

export EDITOR=vim
export PATH=~/.local/bin:"$PATH"

wlkr_rem_colour() {
    cat $1 | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"
}

# 0 -> 100
wlkr_set_brightness() {
    echo $((647*$1))| sudo tee /sys/class/backlight/amdgpu_bl1/brightness
}

alias cscope="cscope -p10 "

git config --global alias.change-commits '!'"f() { VAR=\$1; OLD=\$2; NEW=\$3; shift 3; git filter-branch --env-filter \"if [[ \\\"\$\`echo \$VAR\`\\\" = '\$OLD' ]]; then export \$VAR='\$NEW'; fi\" \$@; }; f"

alias git-name-il="git config --global user.name 'Ryan Walker' ; git config --global user.email info@interruptlabs.ca"
alias git-name-github="git config --global user.name 'o7-machinehum' ; git config --global user.email ryan.cjw@gmail.com"
alias git-name-zephyr="git config --global user.name 'Ryan Walker' ; git config --global user.email ryan.cjw@gmail.com"

alias vi=vim

export TERM=xterm-256color

# source /opt/esp-idf/export.sh

PATH=${PATH}:~/bin/

function paste() {
    local file=${1:-/dev/stdin}
    curl --data-binary @${file} https://paste.rs
    echo
}

alias cat=bat
