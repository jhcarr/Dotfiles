### Dotfiles/Makefile
### Justin Carr
### 7/4/2013

## HELP AND USAGE

usage:
	@echo
	@echo "MAKEFILE USAGE"
	@echo
	@echo "help, usage 	:: displays this actions list"
	@echo "check		:: checks for versions of all files from Dotfiles/src in ~/"
	@echo "backup		:: moves files found by \"check\" to ~/.backupDotfiles"
	@echo "link		:: sym links files in Dotfiles/src to ~/"
	@echo

help: usage

## ACTIONS

check:
	./setup/_check2 -c

backup:

link:
