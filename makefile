#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "## Gussing Game!" > README.md
	echo "Final project for *The Unix Workbench*" >> README.md
	echo "Course offered by Johns Hopkins University on [coursera.org](https://www.coursera.org/)." >> README.md
	echo "Number of lines in *guessinggame.sh*" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
