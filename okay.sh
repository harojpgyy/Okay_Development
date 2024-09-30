#!/bin/bash
sn=11145
today=$(date +%Y%m%d)
okay=010@okay.cn
string="$sn$today$okay"
hash=$(echo -n "$string" | md5sum | cut -d ' ' -f 1 | tail -c 6)
echo "$hash"
