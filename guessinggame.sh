no_of_files=$(ls | wc -l)
guess=0
echo "Please type in the number of files:"
read response

function big_or_small {
if [[ $response -gt $no_of_files ]]
then
 echo "Your guess is high"
 echo "Please try again and enter the number of files:"
 read response
elif [[ $response -lt $no_of_files ]]
then
 echo "Your guess is low"
 echo "Please try again and enter the number of files:"
 read response
else
 echo "You have guessed it correct"
 let guess=1
fi
}

while [[ $guess -eq 0 ]]
do
 big_or_small
done
