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
	yaourt -S --noconfirm aur/oh-my-zsh-git
	yaourt -S --noconfirm aur/gtk-theme-solarc-git
	yaourt -S --noconfirm aur/slack-desktop
	yaourt -S --noconfirm community/guake
	yaourt -S --noconfirm community/httping
	
	chsh -s /bin/zsh
	sudo usermod -aG docker $(USER)
	sudo systemctl enable docker
