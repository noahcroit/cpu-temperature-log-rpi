#!/bin/bash

nsamples=100
period=10
cnt=1

FILE=log.csv
if [[ -f "$FILE" ]]; then
    echo "$FILE exists."
    $(rm $FILE) 
fi

while [ $cnt -le $nsamples ]
do
	temp=$(vcgencmd measure_temp)
	echo $temp;
	timestamp=$(($period*$cnt))
	echo "$timestamp,$temp" >> log.csv
	((cnt++));
	sleep $period
done
echo All done
