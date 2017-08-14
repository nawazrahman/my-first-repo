#!/bin/bash

End_Script=0

num_files=`ls -l | grep ^- | wc -l`

CheckUserInput () {

     local num_user=$1
     local num_actual=$2
 
     if [[ $num_user -ne $num_actual ]]
     then
         if [[ $num_user -gt $num_actual ]]
         then
            echo "Your guess was too high!"
         else
            echo "Your guess was too low!"
         fi
     else
         echo "Congratulations! Your guess was correct!"
         End_Script=1
     fi

}

while [[ $End_Script -eq 0 ]]
do
  read -p "how many files are in the current directory: " user_inp
  CheckUserInput $user_inp $num_files
done
 
