#! /bin/bash
# cars.sh
# Audrey Takenaga

INPUT=0

while [ $INPUT -ne 3 ]
do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	read -r INPUT

	case "$INPUT" in
		"1")
		echo "Enter the year of the car:"
		read -r YEAR
		echo "Enter the make of the car:"
		read -r MAKE
		echo "Enter the model of the car:"
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "entering a new car..."
		echo "$NEWCAR" >> My_old_cars
		;;

		"2")
		echo "displaying list of cars (ordered by year)..."
		sort My_old_cars
		;;

		"3")
		echo "exiting..."
		echo "Thank you! Goodbye!"
		;;

		*) 
		echo "That was not one of the options."
		;;
	esac 
done
