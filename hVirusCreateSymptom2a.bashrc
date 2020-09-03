#two symptoms are created everytime after running this file

j=0
until [ $j -eq 2 ]; do
	a=$(sudo ls -l /home/$1/Symptoms | wc -l) #if number of files is 6, then 7 will be stored in a
	b=$((a - 1))  #actual number of files 
	
	if [[ $b -le 19 ]];
	then
	    sudo touch /home/$1/Symptoms/Symptom_$a.txt
            j=$((j + 1))
        else 
        sudo bash hDeleteUser2b.bashrc $1
    fi
done

