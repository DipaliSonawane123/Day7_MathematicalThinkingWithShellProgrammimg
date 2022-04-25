#!/bin/bash  -x

#Extend the Prime Factorization Program to store all the Prime Factors of a  number n into an array and 
#finally display the output. 
read -p "Enter a number: " num
echo "The prime factors of $num are: "
index=0
for ((i=2;i<=$(($num/2));i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		c=0
		for ((j=2;j<$i;j++))
		do

			if [ $(($i%$j)) -eq 0 ]
			then
				((c++))
				break
			fi

		done

		if [ $c -eq 0 ]
		then
			prime[index]=$i
			((index++))
		fi
	fi
done

for show in ${!prime[@]}
do
	echo ${!prime[show]}

done
