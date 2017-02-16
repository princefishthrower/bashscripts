#! /bin/bash

# min_words
# get number of words in each tweet | sort it get last line | send only first column to min_words
wc -w tweet* | sort -r | tail -1 | awk '{ print $1 }' > min_words.txt

# max_words
# get number of words in each tweet | sort it | get header | get last line in header | send only first column to max_words
wc -w tweet* | sort -r | head -2 | tail -1 | awk '{ print $1 }' > max_words.txt

# avg_words
# store header (first column only) of sort as sum
sum=$(wc -w tweets/tweet* | sort -r | head -1 | awk '{ print $1 }') 
# send average to avg_words
expr $sum / 2000 > avg_words.txt 