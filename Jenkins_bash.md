{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww16240\viewh10980\viewkind0
\deftab720
\pard\pardeftab720\sl280\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
sudo docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=sifra -d mysql:5.7\
sudo sleep 60\
sudo docker run --name some-wordpress --link some-mysql:mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=sifra -p 9090:80 -d wordpress\
}