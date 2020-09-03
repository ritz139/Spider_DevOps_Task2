#password of every user is password
sudo useradd -m -p $(openssl passwd -1 password) Corona

for i in doc1 doc2;
do
    sudo useradd -m -p $(openssl passwd -1 password) $i
    
done

for i in p{1..10};
do
   sudo useradd -m -p $(openssl passwd -1 password) $i

done

