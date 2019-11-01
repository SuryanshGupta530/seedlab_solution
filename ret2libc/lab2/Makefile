0:
	sudo sysctl -w kernel.randomize_va_space=0
	sudo rm /bin/sh
	sudo ln -s /bin/zsh /bin/sh

11: retlib.c
	sudo gcc -fno-stack-protector -z noexecstack -o retlib retlib.c
	sudo chmod 4755 retlib

12: exploit.c
	gcc -o exploit exploit.c
