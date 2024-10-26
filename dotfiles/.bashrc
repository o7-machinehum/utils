#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# General shortcuts
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rm='trash-put'

# HDMI screen stuff
alias hdmi-on='xrandr --output HDMI-0 --same-as DVI-D-0 ; xrandr --output HDMI-0 --mode 1920x1080'
alias hdmi-off='xrandr --output HDMI-0 --off'

# Start the SSH server
alias sshd-start='systemctl start sshd.service'

# CPU Power
alias wlkr-cpu-on-demand='sudo cpupower frequency-set -g ondemand'
alias wlkr-cpu-full-power='sudo cpupower frequency-set -g performance'
alias wlkr-cpu-low-power='sudo cpupower frequency-set -g powersave'
alias wlkr-cpu-speed='watch -n.1 "grep \"^[c]pu MHz\" /proc/cpuinfo"'

copy_file() {
    xclip -selection clipboard -t image/png -i $1
}

copy_screen() {
    import img.png
    xclip -selection clipboard -t image/png -i img.png
    rm img.png
}

alias git-submodule-init="git submodule update --init --recursive"
alias git-submodule-update="git submodule update --recursive"

alias wlkr-ssh-ots="ssh -i ~/.ssh/git_key ots@96.126.103.186"
alias wlkr-ssh-wiki="ssh -i ~/.ssh/git_key wiki@104.200.25.106"

# alias init-ssh-key="eval '$(ssh-agent -s)' ; ssh-add ~/.ssh/git_key"
eval $(ssh-agent -s) > /dev/null ; ssh-add ~/.ssh/git_key 2>/dev/null
eval $(ssh-agent -s) > /dev/null ; ssh-add ~/.ssh/id_ed25519 2>/dev/null

export EDITOR=vim
export PATH=~/.local/bin:"$PATH"

wlkr-rem-colour() {
    cat $1 | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"
}

# 0 -> 100
wlkr-set-brightness() {
    echo $((68*$1))| sudo tee /sys/class/backlight/intel_backlight/brightness
}

alias pastry="curl --data-binary @- https://paste.rs"
alias cscope="cscope -p10 "

git config --global alias.change-commits '!'"f() { VAR=\$1; OLD=\$2; NEW=\$3; shift 3; git filter-branch --env-filter \"if [[ \\\"\$\`echo \$VAR\`\\\" = '\$OLD' ]]; then export \$VAR='\$NEW'; fi\" \$@; }; f"

alias git-name-il="git config --global user.name 'Ryan Walker' ; git config --global user.email info@interruptlabs.ca"
alias git-name-github="git config --global user.name 'o7-machinehum' ; git config --global user.email ryan.cjw@gmail.com"
alias git-name-zephyr="git config --global user.name 'Ryan Walker' ; git config --global user.email ryan.cjw@gmail.com"

export OPENAI_API_KEY='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'
