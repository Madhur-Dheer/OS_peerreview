#!/usr/bin/env bash

echo "[Welcome to Guessing game v0.1]"

function ask {
	echo "Please enter the number of files in the current directory:"
	read num
    Numoffiles=$(ls -1 | wc -l)
}

ask

while [[ $num -ne $Numoffiles ]]
do
	if [[ $num -lt $Numoffiles ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
