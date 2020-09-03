#it will run hVirusCreateSymptom2a again at 12 noon
echo "00 12 * * * sudo bash hVirusCreateSymptom2a" > file.txt

sudo crontab file.txt

rm -f file.txt