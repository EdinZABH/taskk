sudo docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=sifra -d mysql:5.7\
sudo sleep 60\
sudo docker run --name some-wordpress --link some-mysql:mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=sifra -p 80:80 -d wordpress\
