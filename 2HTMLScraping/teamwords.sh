#! /bin/bash

# Call webcrawler to scrape the website's text
sh webcrawler.sh
# Crawl the website | grep with user inputs nbefore and nafter, extended regex, ignore case, do this for every seahawks or patriots match 
grep -B $1 -A $2 -Eo -i 'seahawks|patriots' textscrape.txt | sed 's/--//' # I have no idea why grep was outputting "--" between each match

