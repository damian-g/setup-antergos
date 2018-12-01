USER = $(shell whoami)

run	:
	sudo pacman -Sy --noconfirm yaourt
	@make utilities
	@make dev

utilities:
	yaourt -S --noconfirm antergos/dropbox
	yaourt -S --noconfirm extra/thunderbird
	yaourt -S --noconfirm aur/spotify
	yaourt -S --noconfirm community/firefox-developer-edition
	yaourt -S --noconfirm community/keepassxc
	yaourt -S --noconfirm community/virtualbox
	yaourt -S --noconfirm aur/oh-my-zsh-git
	yaourt -S --noconfirm aur/gtk-theme-solarc-git
	yaourt -S --noconfirm community/guake
	yaourt -S --noconfirm community/httping
	yaourt -S --noconfirm extra/chrome-gnome-shell

	chsh -s /bin/zsh

dev:
	yaourt -S --noconfirm community/docker
	yaourt -S --noconfirm community/docker-compose
	yaourt -S --noconfirm aur/kubectl-bin
	yaourt -S --noconfirm aur/minikube
	yaourt -S --noconfirm aur/skaffold
	yaourt -S --noconfirm aur/visual-studio-code-bin
	yaourt -S --noconfirm antergos/jetbrains-toolbox
	yaourt -S --noconfirm aur/postman-bin

	sudo usermod -aG docker $(USER)
	sudo systemctl enable docker
