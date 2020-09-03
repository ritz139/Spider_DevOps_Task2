#changing the ownership because the directories were not being made

#CAUTION use the username of your device instead of "ritik"

sudo chown -R Corona:ritik /home/Corona

for i in doc1 doc2; do 
    sudo usermod -a -G $i Corona
done

for i in doc{1..2}; do
    sudo chown -R $i:Corona /home/$i
    sudo chmod -R g+rwx /home/$i
    sudo chmod -R g+s /home/$i
    sudo chmod 773 /home/$i
    sudo mkdir /home/$i/Vaccines
    sudo mkdir /home/$i/Symptoms
    sudo mkdir /home/$i/Requests
    sudo chmod 773 /home/$i/Vaccines
    sudo chmod 773 /home/$i/Symptoms
    sudo chmod 773 /home/$i/Requests
done

for i in {1..10}; do
    if [[ $(( i % 2)) -eq 0 ]]; then
        sudo chown -R p$i:doc2 /home/p$i
        sudo chmod -R g+rwx /home/p$i
        sudo chmod -R g+s /home/p$i
        sudo chmod 773 /home/p$i
        sudo mkdir /home/p$i/Symptoms
        sudo chmod 773 /home/p$i/Symptoms
        sudo chmod -R g+r /home/doc2/Vaccines
    else
        sudo chown -R p$i:doc1 /home/p$i
        sudo chmod -R g+rwx /home/p$i
        sudo chmod -R g+s /home/p$i
        sudo chmod 773 /home/p$i
        sudo mkdir /home/p$i/Symptoms
        sudo chmod 773 /home/p$i/Symptoms
        sudo chmod -R g+r /home/doc2/Vaccines
    fi
done


