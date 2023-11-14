help:
	@cat Makefile
boot.config:
	@sudo nvim /etc/nftables.conf
proposed.config:
	@nvim ./etc/nftables.conf
install.config:
	@sudo cp -v ./etc/nftables.conf /etc/
restart:
	@sudo systemctl restart nftables; sudo systemctl status nftables
pull:
	@git pull
savetogit:
	@git add . && git commit -m 'saving' && git push
