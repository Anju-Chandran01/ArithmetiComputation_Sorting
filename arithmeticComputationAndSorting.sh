#!/bin/bash -x

echo "---- Arithmetic Compution And Sorting ----"

#DECLARE DICTIONARY
declare -A arithmeticOperation

#DECLARE AN ARRAY
declare -a array

#TO TAKE INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput

#COMPUTE ARITHMETIC OPERATION
result1=`awk 'BEGIN{printf("%0.2f",'$firstInput' + '$secondInput' * '$thirdInput')}'`
echo "Result:" $result

result2=`awk 'BEGIN{printf("%0.2f",'$firstInput' * '$secondInput' + '$thirdInput')}'`
echo "Result:" $resultTwo

result3=`awk 'BEGIN{printf("%0.2f",'$firstInput' + '$secondInput' / '$thirdInput' )}'`
echo "Result:" $resultThree

result4=`awk 'BEGIN{printf("%0.2f",'$firstInput' % '$secondInput' + '$thirdInput')}'`
echo "Result:" $resultFour

#TO STORE THE DICTIONARY
arithmeticOperation[((result1))]=$result1
arithmeticOperation[((result2))]=$result2
arithmeticOperation[((result3))]=$result3
arithmeticOperation[((result4))]=$result4

#READ DICTIONARY VALUE IN ARRAY
for ((index=0; index<=${#arithmeticOperation[@]}; index++))
do
  array[((index))]=${arithmeticOperation[((result$((index+1))))]}
done
echo "${array[@]}"

#SORT RESULTS IN DESCENDING ORDER
sortDescendingArray=( $( printf "%s\n" "${array[@]}" | sort -nr ) )
echo ${sortDescendingArray[@]}
