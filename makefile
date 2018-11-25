ssh:
	ssh u0_a77@192.168.0.12 -p 8022 -i ~/.ssh/asusZenPad3s


install:
	scp -i ~/.ssh/asusZenPad3s -P 8022 vimrc \
		u0_a77@192.168.0.12:~/.vimrc \

ssh:
	ssh -p 8022 u0_a77@192.168.0.12 -i ~/.ssh/asusZenPad3s 