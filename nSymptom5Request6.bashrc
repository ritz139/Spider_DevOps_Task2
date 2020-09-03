#5 files of symptoms are created

for i in {1..5}; do
  for j in {1..10}; do
    sudo echo $i > /home/p$j/Symptoms/Symptom_$i.txt
  done
done

# Request files are created

for i in {1..10}; do
  if [[ $((i % 2)) -eq 0 ]]; then
    sudo touch /home/doc2/Requests/p$i.txt
    sudo chmod 773 /home/doc2/Requests/p$i.txt
  else
    sudo touch /home/doc1/Requests/p$i.txt
    sudo chmod 773 /home/doc2/Requests/p$i.txt
  fi
done
