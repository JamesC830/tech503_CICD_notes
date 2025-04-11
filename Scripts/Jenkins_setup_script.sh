#!/bin/bash

#Avoid purple screen
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf

#update
sudo apt update -y

#upgrade add fix/mitigate
sudo NEEDRESTART_MODE=a apt-get dist-upgrade --yes

#Import GPG key
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

#Add the Jenkins apt repository:
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#Update and install jenkins
sudo apt-get update
sudo apt-get install jenkins -y

#Install java
sudo apt update
sudo apt install fontconfig openjdk-17-jre -y
java -version

#Start jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins