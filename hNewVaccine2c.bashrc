#2 vaccines will be created after every run in both doctor


for user in doc{1..2}; do
i=0
j=1
    until [ $i -eq 2 ]; do
        a=$(sudo ls -l /home/$user/Vaccines | grep "Vaccine_$j.txt")
        
        if [[ -z $a ]]; then
            sudo touch /home/$user/Vaccines/Vaccine_$j.txt
            j=$((j + 1))
            i=$((i + 1))
        else
            j=$((j + 1))
        fi
    done
done

