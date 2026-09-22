#!/usr/bin/env bash

# Ask the user to enter a number
# Then check if the number is even or odd
# Finally echo a text to the terminal to say which number it was
# But I also want to receive in the input only integer and nothing else

# @MaximinIsLearningToScriptInBash

while true; do
read -p $'Enter a number: \n>' num
	if [[ $num =~ ^-?[0-9]+$ ]]; then 
		break
	else
		echo "Please enter only a number, negative or positive integer (e.g. -0,-2,-3,...-10 or 0,1,2,..,100)"
	fi
done

echo "You entered: $num"

if [[ $((num % 2)) -eq 0 ]]; then
	echo "your number is even"
else
	echo "Your number is not even, it is an odd number"
fi


