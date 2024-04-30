#!/bin/bash

if [[ "$1" == *.c && -f "$1" ]]; then
        filename="$1"
        shift
else
        # Get the most recent .c file in the current directory
        filename=$(ls -t *.c 2>/dev/null | head -1)
fi


if [ "$1" = "-c" ]; then
        shift
        if [[ "$1" == *.c && -f "$1" ]]; then
        filename="$1"
                shift
        else
                # Get the most recent .c file in the current directory
                filename=$(ls -t *.c 2>/dev/null | head -1)
        fi
        name=$(echo "$filename" | sed 's/\.[^.]*$//')

        gcc -o "$name" "$filename"

        if [ $? -ne 0 ]; then
                echo -e "\e[31mCompilation Failed:\e[0m"
                exit $?
        fi

        echo -e "\e[9m\e[35m-------------------------------------------\e[0m"
        echo -e "\e[37mCompiled File Name: \e[0m\e[32m$name\e[0m"
        echo -e "\e[9m\e[35m-------------------------------------------\e[0m"


        mkdir -p compiled

        ./"$name" "$@"

        mv "$name" compiled/
else
        gcc "$filename"
        if [ $? -ne 0 ]; then
                echo -e "\e[31mCompilation Failed:\e[0m"
                exit $?
        fi

        echo -e "\e[9m\e[35m-------------------------------------------\e[0m"
        echo -e "\e[37mCompile and Execute: \e[0m\e[32m$filename\e[0m"
        echo -e "\e[9m\e[35m-------------------------------------------\e[0m"


        ./a.out "$@"
fi
