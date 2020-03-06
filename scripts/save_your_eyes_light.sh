#!/usr/bin/env bash

#Находим текущее время (часы)
CURRENT_DATE=`date +%H`

#Часы, в которые программа Redshift должна работать
array=(21 22 23 0 1 2 3 4 5 6)

#Если данное время совпадает, с вечерним временем, то Redshift включается
#В остальных случаях Redshift выключается
for i in "${array[@]}"
do
    if [ "$i" == "$CURRENT_DATE" ] ; then
        redshift
    else
        killall -q redshift
        killall -q geoclue2.0
        pkill save_your_eyes_light.sh
    fi
done
