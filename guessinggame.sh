####
#   file:       guessinggame.sh
#   author:     Caleb Froelich
#   date:       11/22/2021
#   about:      A simple guessing game to determine the # of files
#               in the directory where the program is run.
###

read_guess () {
    echo ""
    read -p "Guess the number of files in your current directory: " guess
}

echo "Welcome to the bash directory guessing game!"

guess=-1
files=$(ls | wc -l | bc -l)

while [[ $guess -ne $files ]]
do
    read_guess
    if [[ $guess -gt $files ]]
    then
        echo "Your guess is a little too high. Please try again!"
    elif [[ $guess -lt $files ]]
    then
        echo "Your guess is a little too low. Please try again!"
    fi
done

echo "You got it! There is/are $files file(s) in your current directory."
