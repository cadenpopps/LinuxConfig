case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=5000
HISTFILESIZE=8000

shopt -s checkwinsize

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

color_prompt=yes

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[38;2;190;190;239m\][\w]\[\033[38;2;252;207;198m\] '
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
function gitcheckout(){
	git checkout "$*"
}

function cppcompile(){
	g++ *.cpp -lstdc++ -o output.o
}
function cppcompilerun(){
	cppc; cppr output.o
}
function cpprun(){
	./"$*"
}

function codeopen(){
	code "$*" &
}

function cdls(){
	cd "$*"
	ls
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
}

function pullBashrc(){
	cd
	git fetch
	git pull
	source .bashrc
}

function sedhttpd(){
	sudo sed -i "s|cadenpopps\.com.*\"|cadenpopps.com/${*}\"|g" /etc/httpd/conf/httpd.conf
	sudo httpd -k restart	
}

if [ -f "$HOME"/.bash_aliases ]; then
	. "$HOME"/.bash_aliases
	echo '.bash_aliases sourced'
fi

bind 'TAB':menu-complete
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"

echo '.bashrc sourced' 
