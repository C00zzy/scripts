#
# ~/.bashrc
#

#aliases
alias check_updates='checkupdates'
alias update="paru"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls -l --color=auto'
alias grep='grep --color=auto'
eval "$(thefuck --alias)"
PS1='\[\e[97m\]\u@\h:\w\ \[\e[0m\]'

#Stats

echo -e "\033[97mKernel version is $(uname -r)."
echo -e "\033[97mToday's date is $(date)."
echo -e "\033[97mCurrent Uptime is $(uptime -p) and has been up since $(uptime -s)."
echo ""
echo ""
echo ""

#To check if theres updates
echo "Checking for updates..."
check_updates() {
	sudo pacman -Syq >/dev/null
	updates=$(pacman -Qu | wc -l)
	if [ "$updates" -gt 0 ]; then
		echo "Theres updates available! Please run paru!"
	else
		echo "There's no updates right now..."
	fi
}

check_updates
