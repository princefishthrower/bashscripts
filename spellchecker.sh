#! /bin/bash

echo "The following words within $1 are spelled incorrectly:"
# grep print only if no match found match with whole words and ignore case within english.txt as expression file from input plain text
grep -v -w -i -f english.txt $1


