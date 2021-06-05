autoload -U colors && colors # Enable colors
RUNNER=ansible-pull
PLAYBOOK_URL="https://github.com/flrnd/ansible.git"

if ! command -v $RUNNER &> /dev/null
then
	printf "$fg[red]$RUNNER$reset_color could not be found"
	printf "\n$fg[green]Install? [y/n]:$reset_color "
	if read -q; then
    echo; sudo apt install -y ansible
  else
    exit 1
  fi
  printf "Pulling playbook from $PLAYBOOK_URL,\ncontinue? [y/N]: "
  if read -q; then
		echo; ansible-pull -u $(whoami) -K -U $PLAYBOOK_URL --check
  else
    exit 1
  fi
fi



