#!/bin/bash -x
#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,  etc and store them in an array


read -p "Enter the upper value of the range : " range

index1=0
for ((i=1;i<=$range;i++))
do
	num=$i
	index1=0
	counter=0
	while [ $num -ne 0 ]
	do
	   array[index1]=$((num%10)) #1%10=1
	   num=$(($num/10));   #1/10=0
	   ((index1++))
	done
echo ${#array[@]}
		for((j=0;j<$((${#array[@]}-1));j++))
		do
			for((k=$(($j+1));k<${#array[@]};k++))
			do
		    	   if [ ${array[j]} -eq ${array[k]} ]
		    	   then
			  	((counter++))
		    	   fi
			done
		done
	if [ $counter -eq 1 ]
	then
		store[index2]=$i
		((index2++))
	fi
done
echo "We found ${#store[@]} numbers"
echo "The numbers in which only a single digit is repeated twice are:"
for show in ${!store[@]}
do
	echo ${store[show]}
done
