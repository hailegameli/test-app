#Pulling base image
FROM Ubuntu
#setting up workdirectory to copy the code inside the container
WORKDIR /app
#Update ubuntu os
apt-get update -y
#To Install apache2 webserver
RUN apt-get install apache2 -y
#copy code from local to inside the docker image
COPY . /var/www/html
#Start the apache server
ENTRY apachect1 -D FOREGROUND
