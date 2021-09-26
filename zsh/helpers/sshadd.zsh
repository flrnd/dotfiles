if [ "$DESKTOP_SESSION" = '/usr/share/xsessions/plasma5' ]; then
	export SSH_ASKPASS=/usr/libexec/ssh/ksshaskpass
	/usr/bin/ssh-add -q </dev/null
fi
