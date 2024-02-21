@Deal With The Program:

1- Build System Target on Host Machine: $ make build PLATFORM=HOST

2- Run the Host Machine Code:

		    $ ./c1m2.out
3- Build System Target For ARM:

		    $ make build PLATFORM=MSP321
4- Build Some System Files:

		    $ make memory.o PLATFORM=HOST

		    $ make memory.i PLATFORM=MSP432
		    
		    $ make main.asm PLATFORM=MSP432
5- Delete All Created Files:

		    $ make clean
