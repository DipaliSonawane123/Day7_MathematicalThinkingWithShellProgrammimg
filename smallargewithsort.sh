#!/bin/bash -x
#Extend the above program to sort the array and then find the 2nd largest  and the 2nd smallest element. 

for((index=0;index<10;index++))
do
	array[index]=$(( (RANDOM%900)+100 ))
done
echo "The numbers are: " ${array[@]}

temp=0
for((i=0;i<${#array[@]};i++)) #array
do
	for((j=$(($i+1));j<${#array[@]};j++))  #sorting
	do
		if [ ${array[i]} -gt ${array[j]} ]
		then
			temp=${array[i]}
			array[i]=${array[j]}
			array[j]=$temp
		fi
	done
done

echo "The numbers after sorting in ascending order are: " ${array[@]}
b=$((${#array[@]}-2))
echo "The second largest element is: " ${array[$b]}
echo "The second smallest element is: " ${array[1]}
