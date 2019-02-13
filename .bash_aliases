
alias x='exit'
alias ox='openbox --exit'
alias lock='. ~/scripts/i3lock.sh'
alias twitch='. ~/scripts/twitchBots.sh'

alias arch='neofetch --color_blocks off --ascii_colors #fccfc6 #fccfc6 #fccfc6 #fccfc6 #fccfc6 #fccfc6'

alias v="vim"
alias pdf='pdflatex'
alias urar='unrar e'

alias applist='cat ~/documents/applist'
alias colorlist='cat ~/documents/colors'

alias bg='. ~/scripts/bg'
alias brightness='pkexec brillo -u 10000 -S '
alias volume='pulseaudio-ctl set '
alias mute='pulseaudio-ctl mute'
alias volup='pulseaudio-ctl up'
alias voldown='pulseaudio-ctl down'
alias screenshot='deepin-screenshot -f -s ~/images/screenshots'
alias code='codeopen'
alias workmode='. ~/scripts/workmode.sh'
alias normalmode='. ~/scripts/normalmode.sh'

alias ehttpd='sedhttpd_site '
alias ehttpdd='sedhttpd "dungeon/"'
alias eba='vim ~/.bash_aliases'
alias ebrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc;cbrc'
alias pbrc='pullBashrc'
alias cbrc='commitBashrc'

alias customLS='ls -a -p --group-directories-first --color=always'
alias l='ls --format=vertical'
alias ls='customLS'
alias lsize='ls --format=single-column -s --block-size=m'
alias lall='ls -a -t --format=verbose -s --block-size=k'

alias cdl='cdls'
alias cdd='cd /mnt/c/Users/Caden/Desktop'
alias cdc='cd /mnt/c/Users/Caden/Desktop/cpp'
alias cds='cd $_SITE;echo;git branch;echo'
alias cdp='cd /mnt/c/Users/Caden/Desktop/python'
alias cdrl='cd /mnt/c/Users/Caden/Desktop/RL-Insider'
alias cddu='cd $_DUNGEON;echo;git branch;echo'

alias txpack='/usr/share/texlive/texmf-dist/tex/latex'
alias cdtxp='cd txpack'

alias gp='git push'
alias gpu='git push -u origin HEAD'
alias gc='gitcommit'
alias gcp='gitcommitpush'
alias gm='gitmerge'
alias gnew='gitremote'
alias gpl='git pull --all'
alias gf='git fetch --all'
alias gch='gitcheckout'
alias glg='git log --pretty=format:"%C(reset)%h %ad%C(yellow bold)%d %Creset %C(cyan bold)%s" --decorate --date=short'
alias gb='git branch'

alias cppc='cppcompile'
alias cppr='cpprun'
alias cppcr='cppcompilerun'
alias pcppcr='echo "g++ *.cpp -lstdc++ -o output.o"'

alias pr='python'

alias rhttpd='sudo httpd -k restart'
