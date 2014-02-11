#!/bin/bash

phrase="yesterday"
fmt="%m/%d/%Y"
start=$(date +$fmt -d $phrase)
end=$(date +$fmt)
#filter="project.isnt:rednotebook project:thesis"
filter="project:thesis"
#filter=""

echo "    (generated at $(date))"
echo
echo " -- Tasks completed from $start to $end (back $phrase) -- "
/usr/bin/task completed $filter end.after:$start

echo
echo 
echo " -- Upcoming tasks -- "
/usr/bin/task next $filter

echo
echo
echo " -- Summary -- "
/usr/bin/task summary $filter

echo
echo
echo " -- History -- "
/usr/bin/task history $filter
/usr/bin/task ghistory $filter
/usr/bin/task burndown.daily
/usr/bin/task burndown
