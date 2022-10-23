clear
if [ "$TERM" = xterm ]; then
TERM=xterm-256color;
fi
export TERM=xterm-256color

echo
#neofetch --ascii_distro windows7


reminders=(
    "reminder1"
    "reminder2"
    "reminder3"
    )


days=("
    88\      88\                     
    888\    888 |                    
    8888\  8888 | 888888\  8888888\  
    88\88\88 88 |88  __88\ 88  __88\ 
    88 \888  88 |88 /  88 |88 |  88 |
    88 |\8  /88 |88 |  88 |88 |  88 |
    88 | \_/ 88 |\888888  |88 |  88 |
    \__|     \__| \______/ \__|  \__|"
"
    88888888\                     
    \__88  __|                    
       88 |   88\   88\  888888\  
       88 |   88 |  88 |88  __88\ 
       88 |   88 |  88 |88888888 |
       88 |   88 |  88 |88   ____|
       88 |   \888888  |\8888888\ 
       \__|    \______/  \_______|"
"
    88\      88\                 88\ 
    88 | 8\  88 |                88 |
    88 |888\ 88 | 888888\   8888888 |
    88 88 88\88 |88  __88\ 88  __88 |
    8888  _8888 |88888888 |88 /  88 |
    888  / \888 |88   ____|88 |  88 |
    88  /   \88 |\8888888\ \8888888 |
    \__/     \__| \_______| \_______|"
"
    88888888\ 88\                           
    \__88  __|88 |                          
       88 |   8888888\  88\   88\  888888\  
       88 |   88  __88\ 88 |  88 |88  __88\ 
       88 |   88 |  88 |88 |  88 |88 |  \__|
       88 |   88 |  88 |88 |  88 |88 |      
       88 |   88 |  88 |\888888  |88 |      
       \__|   \__|  \__| \______/ \__|       "
"
    88888888\           88\ 
    88  _____|          \__|
    88 |       888888\  88\ 
    88888\    88  __88\ 88 |
    88  __|   88 |  \__|88 |
    88 |      88 |      88 |
    88 |      88 |      88 |
    \__|      \__|      \__|"
"
     888888\              88\     
    88  __88\             88 |    
    88 /  \__| 888888\  888888\   
    \888888\   \____88\ \_88  _|  
     \____88\  8888888 |  88 |    
    88\   88 |88  __88 |  88 |88\ 
    \888888  |\8888888 |  \8888  |
     \______/  \_______|   \____/ "
"
     888888\                      
    88  __88\                     
    88 /  \__|88\   88\ 8888888\  
    \888888\  88 |  88 |88  __88\ 
     \____88\ 88 |  88 |88 |  88 |
    88\   88 |88 |  88 |88 |  88 |
    \888888  |\888888  |88 |  88 |
     \______/  \______/ \__|  \__|"
 )


day=$(($(date +%u) - 1))
rtrn="\e[100D\e[45C"

messages=(
    #sun
    "800  ->     #   MATH HW
    ${rtrn}     - 1400 # ACTING HW
    ${rtrn}.
    ${rtrn}1400 - 1600 ++ Maintenance
    ${rtrn}.
    ${rtrn}1600 - 1800 $ Hobb..
    ${rtrn}1800 - LATE & software..research
    "
    #mon
    "800 - 1015  % MATH..CS
    ${rtrn}.
    ${rtrn}1030 ->     & work
    ${rtrn}.
    ${rtrn}     ->     # ACTING HW
    ${rtrn}     ->     ## LATIN HW
    "
    #tue
    "945 - 1115  % ACTING 
    ${rtrn}.
    ${rtrn}1115 - 1700 & software..r.m.t
    ${rtrn}.
    ${rtrn}1700 - 2000 $ Hobb..
    ${rtrn}.
    ${rtrn}2000 ->     #   MATH HW
    "
    #wed
    "800 - 1015  % MATH..CS
    ${rtrn}.
    ${rtrn}1030 ->     & work
    ${rtrn}.
    ${rtrn}     ->     #   MATH HW
    ${rtrn}     ->     ## LATIN HW
    "
    #thur
    "800 - 1115  % MATH..ACTING
    ${rtrn}.
    ${rtrn}1130 ->     & work
    ${rtrn}.
    ${rtrn}     - 2000 #     CS HW
    ${rtrn}.
    ${rtrn}2000 ->     & software..test
    "
    #fri
    "800 - 1015  % MATH..CS
    ${rtrn}.
    ${rtrn}1030 ->     & work
    ${rtrn}.
    ${rtrn}     - 2000 $       FUN
    ${rtrn}.
    ${rtrn}2000 ->     &   MATH HW
    "
    #sat
    "800  - 1200 & software..test.document
    ${rtrn}.
    ${rtrn}1200 ->     ++ Checklist
    ${rtrn}.
    ${rtrn}     - LATE & LATIN HW
    "
    )

#neofetch --ascii_distro windows7
#day
echo -e "\e[3m\e[5m\e[01;3${day}m${days[${day}]}\e[0m"
#bits
echo -e "\e[3m\e[\e[s\e[100D\e[2B\e[01;91m@\e[01;92m@\e[1B\e[2D\e[01;93m@\e[01;94m@\e[u"
echo -e "\e[\e[s\e[100D\e[1B\e[78C\e[01;91m@\e[01;92m@\e[1B\e[1D\e[01;93m@\e[01;94m@\e[u"
#schedule
echo -e "\e[4m\e[s\e[\e[100D\e[10A\e[49C\e[01;33m$(date +%A) $(date +%b) $(date +%d)\e[u\e[0m"
echo -e "\e[3m\e[s\e[9A${rtrn}\e[01;97m${messages[${day}]}\e[u"
#remind
echo -e "\e[s\e[1A\e[100D\e[7C\e[01;35m-->   ${reminders[$(($RANDOM % ${#reminders[@]}))]} \e[100D\e[70C<--\e[u"
echo -e "\e[01;00m\e[0m"




head -n 15 ~/Desktop/todo.txt
printf "\n          >> (A-F) << (A-B) X>> (A-D) <<X (C-W)\n"
cd ~/Desktop/

#
# ~/.bashrc
#

# funny scrips
# python ~/Desktop/shtuff/py/lol/copypasta.py

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Change the window title of X terminals
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\e]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\e_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\e\\"'
		;;
esac

use_color=true

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
	&& type -P dircolors >/dev/null \
	&& match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color} ; then
	# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
	if type -P dircolors >/dev/null ; then
		if [[ -f ~/.dir_colors ]] ; then
			eval $(dircolors -b ~/.dir_colors)
		elif [[ -f /etc/DIR_COLORS ]] ; then
			eval $(dircolors -b /etc/DIR_COLORS)
		fi
	fi

	if [[ ${EUID} == 0 ]] ; then
		PS1='\[\e[01;31m\][\h\[\e[01;36m\] \W\[\e[01;31m\]]\$\[\e[00m\] '
	else
		PS1='\[\e[01;32m\][\[\e[00m\]\e[05m\A\e[00m \[\e[01;32m\]\u@\h\[\e[01;37m\] \W\[\e[01;32m\]]\$\[\e[00m\] '
	fi

	alias ls='ls --color=auto'
	alias grep='grep --colour=auto'
	alias egrep='egrep --colour=auto'
	alias fgrep='fgrep --colour=auto'
else
	if [[ ${EUID} == 0 ]] ; then
		# show root@ when we don't have colors
		PS1='\u@\h \W \$ '
	else
		PS1='\u@\h \w \$ '
	fi
fi

unset use_color safe_term match_lhs sh

#alias cp="cp -i"                          # confirm before overwriting something
#alias df='df -h'                          # human-readable sizes
#alias free='free -m'                      # show sizes in MB
#alias np='nano -w PKGBUILD'
#alias more=less

xhost +local:root > /dev/null 2>&1

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# export QT_SELECT=4

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


# echoed aliases
alias todo="nvim ~/Desktop/todo.txt"
alias hours="nvim ~/Desktop/hours.txt"
alias e="nvim"
alias nvimrc="nvim ~/.nvimrc"
alias vimrc="vim ~/.vimrc"
alias bashrc="nvim ~/.bashrc"
alias project1="cd ~/Desktop/shtuff/c/test/ && nvim main.cpp"
alias school="nvim ~/Desktop/shtuff/etc/"
alias aurora="ssh olbrown3@aurora.cs.uaf.edu"
alias dt="cd ~/Desktop"
alias project2="cd /home/orlabr/Desktop/shtuff/c/game/ && nvim main.cpp"
alias vpn="sudo openconnect --protocol=gp --usergroup=gateway vpn.alaska.edu -b"
alias bookmarks="nvim ~/.mozilla/firefox/bookmarks/"
