README.md: guessinggame.sh
	touch README.md
	echo "## Guessing Game in Bash" > README.md
	echo "**Author**: Caleb Froelich\n" >> README.md
	echo "**Class**: The Unix Workbench\n" >> README.md
	date "+**Updated**: %Y-%m-%d at %H:%M:%S" >> README.md
	echo "\n**About**: A simple guessing game written in UNIX bash to determine the # of files in the directory where the program is run.\n" >> README.md
	echo "**Size of guessinggame.sh**: $(shell cat guessinggame.sh | wc -l | bc -l) lines" >> README.md

clean:
	rm README.md