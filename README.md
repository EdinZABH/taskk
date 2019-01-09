VM is using vagrant (bento/centos-7.4 image)
- Vagrant provisioners use Salt for initial setup of Jenkins and Docker
To spin up project yu should do the following:
Install Virtualbox and Vagrant, clone git repo and spin up projet with command # vagrant up
Manual configuration:
  - Login to Jenkins server via UI and do any initial configuration (do # vagrant ssh ; # sudo cat /var/lib/jenkins/secrets/initialAdminPassword and paste it to UI
    which might be needed at http://localhost:9999
    - Create new 'freestyle' job  on Jenkins which will serve as deployment for the app (wordpress) by executing shell script /srv/salt/deploywp.sh 
    - add secret text for variables given
            p - password
            P1 MYSQL_ROOT_PASSWORD
            U2 WORDPRESS_DB_USER 
            u - root
            P2 WORDPRESS_DB_PASSWORD
  - The services for the app (mysql and web) are  deployed as docker containers 
  - Script starts mysql container first and  does basic sql operation to check that all services are up and running
  - Once mysql is ready, the script starts building wordpress image and starts it as a container, you can access it at http://localhost:9998
