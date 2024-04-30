# C-Auto-gcc
Compile and run .c files automatically with this shell script.

# Set up:
- Make a file called gcc.sh, or any name you want. Just remember the name, because this is how you will run the program.
- Copy and paste the code found in gcc.sh in this repository.
- Save the file.
- Copy the commands below into the terminal:
```
sudo mv gcc.sh /usr/bin/
sudo chmod +x /usr/bin/gcc.sh
```

The shell script will now be in your /usr/bin/ directory, so you don't need to worry about its path when running the script.

**IF YOU'RE DOING THIS ON A LAB MACHINE (DCU STUDENTS):**
- Moving the file to /usr/bin/ won't work because of **permission denied**.
- Instead, create a bin folder in your home directory, and move the gcc.sh file there:
```
mkdir ~/bin
mv gcc.sh ~/bin/
chmod +x ~/bin/gcc.sh
```

- Then, you must add the bin folder to PATH. To do this, create a file called `.profile` in $HOME:
```
nano $HOME/.profile
```
and type:
```
export PATH=$PATH:$HOME/bin
```

- And that's it. You should now be able to use gcc.sh.

# Usage:
- Running gcc.sh on its own will compile the most recently edited .c file and run it.
- Let's say you last edited a file called `hello.c`.
  
![image](https://github.com/DanilaJeg/C-Auto-gcc/assets/42975212/70c8ffb7-6799-4021-834f-ec39d2eb103d)

- Running gcc.sh (filename.c) will compile and run the specified file.
  
![image](https://github.com/DanilaJeg/C-Auto-gcc/assets/42975212/19b55c7c-9c32-4d3d-827b-bedcc301081c)


- You can also provide command-line arguments if necessary.
  
![image](https://github.com/DanilaJeg/C-Auto-gcc/assets/42975212/0418a127-dc9b-4e77-a906-dcedaac4a905)


- You can also run gcc.sh with the `-c` argument. This will compile the file and store it in a folder called **compiled**.
  
![image](https://github.com/DanilaJeg/C-Auto-gcc/assets/42975212/568d6248-1894-43cb-b214-35d3d0138012)

- You can also just type `gcc.sh -c` to compil the last edited file.

# Happy C coding!
