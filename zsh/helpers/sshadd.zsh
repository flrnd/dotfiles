if [ "$DESKTOP_SESSION" = '/usr/share/xsessions/plasma5' ] && type /usr/libexec/ssh/ksshaskpass &> /dev/null; then
	export SSH_ASKPASS=/usr/libexec/ssh/ksshaskpass
	/usr/bin/ssh-add -q </dev/null
else
	printf "%s\n" "Missing package ksshaskpass.\n"
fi
