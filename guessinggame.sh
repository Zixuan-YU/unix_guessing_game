#!/usr/bin/env bash

function guess(){
	answer=$(ls -l |grep "^-"|wc -l)
	while true;
	do
		echo "Please guess the number of files in this directory."
		read input
		if [ $input -lt $answer ]
		then
			echo "Too small!"
                elif [ $input -gt $answer ]
                then
                        echo "Too large!"
                else
                        echo "Correct!"
		break;
		fi
	done
}
echo "Play a guessing game!"
guess
