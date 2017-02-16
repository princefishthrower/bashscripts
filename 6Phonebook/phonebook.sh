#! /bin/bash

echo "Total number of phone numbers matched:"
#     any: (XXX) XXX\.XXXX | (XXX)XXX\.XXXX | XXX XXXX | XXX.XXXX | XXX-XXXX | XXXXXXX | (XXX)XXXXXXX
grep -oE '\(\d{3}\)\s\d{3}.\d{4}|\(\d{3}\)\d{3}.\d{4}|\d{3}\s\d{4}|\d{3}\.\d{4}|\d{3}-\d{4}|\d{7}|\(\d{3}\)\d{7}|\(\d{3}\)\s\d{7}' phone-data.txt | wc -l
