USER = $(shell whoami)

install:
	yaourt -S --noconfirm antergos/dropbox
	yaourt -S --noconfirm community/docker
	yaourt -S --noconfirm community/docker-compose 
	yaourt -S --noconfirm aur/visual-studio-code-bin
	yaourt -S --noconfirm aur/postman-bin
	yaourt -S --noconfirm extra/thunderbird
	yaourt -S --noconfirm aur/spotify
	yaourt -S --noconfirm community/pycharm
	yaourt -S --noconfirm community/firefox-developer-edition
	yaourt -S --noconfirm community/keepassxc
	yaourt -S --noconfirm community/virtualbox
	yaourt -S --noconfirm community/i3
	yaourt -S --noconfirm community/termite
	yaourt -S --noconfirm aur/nerd-fonts-complete
	yaourt -S --noconfirm community/ranger
	yaourt -S --noconfirm aur/oh-my-zsh-git
	yaourt -S --noconfirm aur/i3lock-fancy-git
	yaourt -S --noconfirm aur/oh-my-zsh-git
	yaourt -S --noconfirm extra/feh
	yaourt -S --noconfirm community/playerctl
	yaourt -S --noconfirm aur/skypeforlinux-stable-bin
	yaourt -S --noconfirm community/riot-desktop
	yaourt -S --noconfirm arandr

	chsh -s /bin/zsh
	sudo usermod -aG docker $(USER)