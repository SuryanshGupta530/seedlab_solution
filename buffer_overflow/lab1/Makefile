pre:
	sudo sysctl -w kernel.randomize_va_space=0
	sudo rm /bin/sh
	sudo ln -s /bin/zsh /bin/sh

shell:call_shellcode.c
	gcc -z execstack call_shellcode.c -o call_shellcode
	./call_shellcode

stack:stack.c
	gcc -o stack -z execstack -fno-stack-protector stack.c
	sudo chown root stack
	sudo chmod 4755 stack

exploit:exploit.c
	gcc -o exploit exploit.c

exploit_dash:exploit_dash.c
	gcc -o exploit_dash exploit_dash.c

dash_shell_test:dash_shell_test.c
	gcc dash_shell_test.c -o dash_shell_test
	sudo chown root dash_shell_test
	sudo chmod 4755 dash_shell_test

dash:
	sudo rm /bin/sh
	sudo ln -s /bin/dash /bin/sh

5:
	gcc -o stack -z execstack stack.c
	sudo chown root stack
	sudo chmod 4755 stack

6:
	gcc -o stack -z noexecstack -fno-stack-protector stack.c
	sudo chown root stack
	sudo chmod 4755 stack
