#one argument of patient's name is passed in this
ls /home/$1/Symptoms
echo "Enter the number of files to be deleted:"
read a
for (( i=0; i<$a; i++)); do
    echo "Enter file name:"
    read name
    rm -f /home/$1/Symptoms/$name
done