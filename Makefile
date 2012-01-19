
HOME=$(shell echo $$HOME)
install:
	install -p .bash_profile  $(HOME)
	install -p .bashrc  $(HOME)
	install -p .vimrc $(HOME)
	rsync -ax .bash.d $(HOME)
	rsync -ax .vim $(HOME)
	install -p .gitconfig $(HOME)
