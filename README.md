# C-Auto-gcc
Compile and run .c file automatically with this shell script.

Set up:
Make a file gcc.sh or any name you want.
Copy and paste code.
Save file.
copy these commands into terminal
sudo mv gcc.sh /usr/bin/
sudo chmod +x /usr/bin/gcc.sh

Usage:
Running gcc.sh on its own will compile the most recently edited .c file and run it.
You could run gcc.sh (filename.c) will compile and run the specified file.
The program also reads all arguments if necessary.

gcc.sh -c will compile the file with a new name and add it to a compiled folder in the current directory.
gcc.sh -c works the same way that gcc.sh except compiles the file.
