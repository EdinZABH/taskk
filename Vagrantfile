
Vagrant.configure("2") do |config|
  config.vm.define "salt" do |salt|
  salt.vm.provider "virtualbox" do |vb|
        vb.memory = "4096"
        vb.cpus = 4
    end
  salt.vm.hostname = 'salt'
  salt.vm.box = "bento/centos-7.4"
  salt.vm.provision :salt do |salt|
  salt.install_master = true
  salt.no_minion = false
  salt.run_highstate = true
  #salt.masterless = true
  salt.master_config = "/Users/edin/task2/master/master.conf"
  salt.minion_config = "/Users/edin/task2/minion/minion.conf"
  salt.master_key = "/Users/edin/task2/pki/master.pem"
  salt.master_pub = "/Users/edin/task2/pki/master.pub"
  salt.minion_key = "/Users/edin/task2/pki/minion.pem"
  salt.minion_pub = "/Users/edin/task2/pki/minion.pub"
  salt.seed_master = {"salt" => "/Users/edin/task2/pki/minion.pub"}
  config.vm.synced_folder '/Users/edin/task2/', '/srv/salt'  
  #salt.bootstrap_options = "-P -c /tmp"
  #config.vm.synced_folder '/Users/edin/task2/pki/', '/etc/salt/pki/minion/'
  config.vm.network "forwarded_port", guest: 80, host: 9998
  config.vm.network "forwarded_port", guest: 8080, host: 9999
  #salt.accept_keys = true
    end


  #salt.vm.network "forwarded_port", guest: 8080, host: 8888
  # config.vm.synced_folder "../data", "/vagrant_data"
  salt.vm.network "private_network", ip: "192.168.33.9"
  #salt.vm.provision "shell", inline: <<-SHELL
  
  # sudo yum install java-1.8.0-openjdk -y
  # sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
  # sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
  # sudo yum install jenkins -y
  # sudo service jenkins start
  # SHELL

end

end
