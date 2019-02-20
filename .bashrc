case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=5000
HISTFILESIZE=8000

shopt -s checkwinsize

PS1='\033[38;2;190;190;239m[\w]\[$(tput sgr0)\][\033[38;2;252;207;198m '

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
function gitcommitpush(){
	gitcommit "$*"
	gp
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
	git add .
	git commit -m $(date +%x_%H:%M)
}

function pullBashrc(){
	cd
	git fetch
	git pull
	source .bashrc
}

function sedhttpd(){
	if [ -f $_HTTPD ]; then
		sudo sed -i "s|cadenpopps\/.*\"|cadenpopps\/$1\"|g" $_HTTPD
		$($_HTTPD_RESTART)
	fi
}

function sedhttpd_site(){
	sedhttpd "cadenpopps.com\/$1"
}

if [ -f "$HOME"/.vars ]; then
	. "$HOME"/.vars
fi

if [ -f "$HOME"/.bash_aliases ]; then
	. "$HOME"/.bash_aliases
fi

# if [ -d "$HOME"/shared/ ]; then
	# 	rsync -rv -e ssh norm@192.168.0.50:/home/norm/shared/ ~/shared/
# fi

setxkbmap -option caps:swapescape
bind 'TAB':menu-complete
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"
