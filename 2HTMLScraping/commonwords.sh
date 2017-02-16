#! /bin/bash

sh webcrawler.sh | tr -cs "A-Za-z" "\n" | sort | uniq -c -i | sort -n -r | head -100