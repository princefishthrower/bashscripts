#! /bin/bash

# get html file | translate out all <> elements | remove end html tags | remove start html tags | print every word on the website as one word per line
curl 'http://www.cs.cornell.edu/courses/cs2043/2015sp/assignments/superbowl.html' | sed 's|</b>|-|g' | sed 's|<[^>]*>||g' | gawk '{for (i=1;i<=NF;i++) print $i }' > textscrape.txt