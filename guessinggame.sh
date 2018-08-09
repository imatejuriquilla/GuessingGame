#!/usr/bin/env bash
# Carlos Alberto Gonzalez Castro
# File: guessinggame.sh

number_files=0;
function getFiles {
	number_files=$(ls -p | grep -v / | wc -l);
}
getFiles;

echo -e "Welcome to the game of guess the number of files!
			\nyou can guess the number of files?"

while [ 1 ]
do
	read num

	if [ $num -eq $number_files ]
	then
		echo "Congratulations, you have succeeded!!!"
		exit
	elif [ $num -lt $number_files ]
	then
		echo "Sorry, you'r number is small!!!"
	elif [ $num -gt $number_files ]
	then
		echo "Sorry, you'r number is big!!!"
	fi
done

