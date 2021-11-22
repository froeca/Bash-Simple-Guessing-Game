README.md: guessinggame.sh
	touch README.md
	echo "## Guessing Game in Bash" > README.md
	echo "Author: Caleb Froelich" >> README.md
	echo "Class: The Unix Workbench" >> README.md
	date "+README.md written: %Y-%m-%d at %H:%M:%S" >> README.md
	echo "Number of lines in guessing game.sh: $(shell cat guessinggame.sh | wc -l | bc -l)" >> README.md
	echo "About project: A simple guessing game written in UNIX bash to determine the # of files in the directory where the program is run." >> README.md

clean:
	rm README.md