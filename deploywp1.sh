#!/bin/bash
sudo docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=sifra -d mysql:5.7
sudo sh -c 'while ! docker exec some-mysql mysql --user=root --password=sifra -e "SELECT 1" >/dev/null 2>&1; do sleep 1; done'
sudo  docker build -t wp /srv/salt/
sudo docker run -d  --link some-mysql:mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=sifra -p 80:80 wp
