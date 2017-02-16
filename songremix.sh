#! /bin/bash
# call paste with -d to set your own delimeter (tab is default) then two song inputs | remove extra blanklines with sed
paste -d "\n" $1 $2 | sed '/^$/d'
