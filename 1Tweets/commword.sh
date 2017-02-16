#! /bin/bash

cat tweets/tweet* | tr -cs "A-Za-z" "\n" | sort | uniq -c -i | sort -n -r | head -10 > most_common.txt