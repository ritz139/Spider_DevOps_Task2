#3 parameters are passed
#first is patient's name p1, p2 .. p10
#second is doc1 or doc2
#third is x, where x is integer greater than 5
j=0
b=$3
until [[ $j -eq 1 ]]; do
    c=$(sudo ls -l /home/$1/Symptoms/ | wc -l)
    c=$((c - 1 ))
    echo $c
        a=$(sudo ls -l /home/$1/Symptoms/ | grep $b )
        echo $a
        if [[ -z $a ]];
            then
            echo $b
            sudo echo "$b" >> /home/$2/Requests/$1.txt
            sudo touch /home/$1/Symptoms/Symptom_$b.txt
            j=$((j + 1))
            echo $j
        else
            b=$((b + 1))
            continue
        fi
done

