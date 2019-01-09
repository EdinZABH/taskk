#!/bin/bash
sudo docker run --name some-mysql -e $P1=$p -d mysql:5.7
sudo sh -c 'while ! docker exec some-mysql mysql --user=$u --password=$p -e "SELECT 1" >/dev/null 2>&1; do sleep 1; done'
sudo  docker build -t wp /srv/salt/
sudo docker run -d  --link some-mysql:mysql -e $U2=$u -e $P1=$p -p 80:80 wp
