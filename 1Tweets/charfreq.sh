#! /bin/bash

# min_chars
# get number of chars in each tweet | sort it get last line | send only first column to min_words
wc -c tweet* | sort -r | tail -1 | awk '{ print $1 }' > min_chars.txt

# max_chars
# get number of chars in each tweet | sort it | get header | get last line in header | send only first column to max_words
wc -c tweet* | sort -r | head -2 | tail -1 | awk '{ print $1 }' > max_chars.txt

# avg_chars
# store header (first column only) of sort as sum
sum=$(wc -c tweets/tweet* | sort -r | head -1 | awk '{ print $1 }') 
# send average to avg_words
expr $sum / 2000 > avg_chars.txt 