#! /usr/bin/bash

IFS=$'\n' # redefine field separator as newline character
synopses=($(curl https://web.archive.org/web/20140301052344/http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | grep '<description>' | sed 's/<description>//' | sed 's/<\/description>//' | sed 's/<!\[CDATA\[//' | sed 's/\]\]>//' | sed 's/<[^>]*>//' | sed -e 's/^[ \t]*//' | sed "s/Find out which movies were the weekend\'s winners\.//"))

while true; do
	# note parenthesis for list context
	echo "Movies.com Top 10 Box Office"
	curl https://web.archive.org/web/20140301052344/http://www.movies.com/rss-feeds/top-ten-box-office-rss 2> /dev/null | sed 's/<title><!\[CDATA\[//' | sed 's/<!\[CDATA\[//' | sed 's/\]\]><\/title>//' | sed 's/<[^>]*>//' | sed -e 's/^[ \t]*//' | sed -n '/[!-~]/p' | sed 's/<\/description>//' | sed 's/\]\]>//' | grep -E '[1-9]\.' | grep -E '\$'
	read -p "Choose a movie (1-10) > " response
	echo " " # Blank line for formatting
	echo "Movie $response"
	echo "Synopsis" # 
	echo " " # Blank line for formatting
	echo ${synopses[$response]} # Return the correct synopsis
	echo " " # Blank line for formatting
	echo " " # Blank line for formatting
done

#${myarr[@]}