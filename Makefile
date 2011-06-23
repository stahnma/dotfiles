
HOME=$(shell echo $$HOME)
install:
	install -p .bash_profile  $(HOME)
	install -p .bashrc  $(HOME)
	rsync -ax .bash.d $(HOME)
	. $(HOME)/.bashrc
