#! /bin/bash

# Lots of seds to format the times so that they can easily be added/subtracted in sed
cat activity_log.csv | gawk '
BEGIN { FS = "," } 
$2 ~ /start work/ { startworkhour = $3 }
$2 ~ /end work/ { endworkhour = $3 }
workhours += (endworkhour - startworkhour)

$2 ~ /start run/ { startrunhour = $3 }
$2 ~ /end run/ { endrunhour = $3 } 
runhours += (endrunhour - startrunhour)

$2 ~ /start farmers market/ { startfarmersmarkethour = $3 }
$2 ~ /end farmers market/ { endfarmersmarkethour = $3 }
farmersmarkethours += (endfarmersmarkethour - startfarmersmarkethour)

END { print "Hours spent working: " workhours; print "Hours spent running: " runhours; print "Hours spent at the farmers market: " farmersmarkethours }' | tail -3