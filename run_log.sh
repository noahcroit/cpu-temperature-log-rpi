#!/bin/bash

nsamples=100
period=10
cnt=1
while [ $cnt -le $nsamples ]
do
	temp=$(vcgencmd measure_temp)
	echo $temp;
	echo "($period*$cnt),$temp" >> log.csv
	((cnt++));
	sleep $period
done
echo All done
