#
# Carlos Alberto Gonzalez Castro
#
all: clean readme.md

readme.md:
	touch README.md
	echo "## GuessingGame" > README.md
	echo "## Project:" >> README.md
	echo "Guess The Number of Files" >> README.md
	echo "## Date of exec:" >> README.md
	date  >> README.md  
	echo "## Number of lines in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l  >> README.md
	chmod 444 README.md

clean:
	rm -f README.md
