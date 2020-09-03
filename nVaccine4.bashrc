for user in doc{1..2}; do
	sudo echo Coronil > /home/$user/Vaccines/Vaccine_Coronil.txt
	sudo echo USA > /home/$user/Vaccines/Vaccine_USA.txt
	sudo echo Russia > /home/$user/Vaccines/Vaccine_Russia.txt
	sudo echo India > /home/$user/Vaccines/Vaccine_India.txt
	sudo echo UK > /home/$user/Vaccines/Vaccine_UK.txt
done
