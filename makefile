ssh:
	ssh u0_a77@192.168.0.12 -p 8022 -i ~/.ssh/asusZenPad3s

vim-conf:
	scp -i ~/.ssh/asusZenPad3s -P 8022 vimrc \
		u0_a77@192.168.0.12:~/.vimrc

tmux-conf:
	# echo “tmux” >> ~/.bashrc
	# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	scp -i ~/.ssh/asusZenPad3s -P 8022 tmux.conf \
		u0_a77@192.168.0.12:~/.tmux.conf
	# # type this in terminal if tmux is already running
	# $ tmux source ~/.tmux.conf
	# prefix + I
