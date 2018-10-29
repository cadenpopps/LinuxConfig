case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=5000
HISTFILESIZE=8000

shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=no

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;111m\]\u\[\033[38;5;111m\]:\[\033[38;5;111m\]\w\[\033[38;5;216m\] \$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


function gitcommit(){
	git add .
	git commit -a -m "$*"
}
function gitmerge(){
	git merge "$*"
}
function gitpush() {
	git push "$*"
}
function gitremote(){
	git remote add origin git@github.com:cadenpopps/"$*".git
}
function cppcompile(){
	g++ -o output "$*"
}
function cppcompilerun(){
	cppc "$*"; cppr output
}
function cpprun(){
	./"$*"
}

env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

function commitBashrc(){
	cd
	git add .bashrc
	git add .bash_aliases
	git add .gitignore
	git commit -m $(date +%x_%H:%M)
	git push
}

function pullBashrc(){
	cd
	git fetch
	git pull
	source .bashrc
}

if [ -f "$HOME"/.bash_aliases ]; then
	. "$HOME"/.bash_aliases
	echo '.bash_aliases sourced'
fi

bind 'TAB':menu-complete
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"

echo '.bashrc sourced' 
