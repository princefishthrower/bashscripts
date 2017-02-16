#! /bin/bash

# get down to end of Letter 3 | remove text above Letter 3 | only alphabetic characters | sort by word | uniqueness count ignoring caps | sort counts | show only top 10
head -298 frankenstein.txt | tail -43 | tr -cs "A-Za-z" "\n" | sort | uniq -c -i | sort -n -r | head -10