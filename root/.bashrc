alias disks="lsblk -o LABEL,NAME,SIZE,MOUNTPOINT,FSTYPE"
alias ls="ls -lah --time-style=full-iso"
alias c="p ssh"
alias tota="du -ch -x 2>/dev/null | grep total"
alias giga="du -ch -x 2>/dev/null | grep -P [0-9]\+\(\.[0-9]\+\)G"
alias mega="du -ch -x 2>/dev/null | grep -P [0-9]\{3,\}M"
alias psc="ps -e -O %cpu --sort %cpu"

gh () {
	p git/hub/$1 $2 $3
	}

export LANG=en_GB.UTF-8
export PHPRC=/etc/php.ini

if [ "$(shopt login_shell | xargs)" = "login_shell on" ] ; then
	[ -s ~/.lastdirectory ] && cd `cat ~/.lastdirectory`
else
	startDir="$(p /editor/cli-starting-directory)"
	cd ${startDir}
fi

if xhost >& /dev/null ; then	#display is set = xterm
	export PROMPT_COMMAND='echo $(history 1 | cut -d" " -f4-) >> /var/log/cmd/cmd.log;'
fi
