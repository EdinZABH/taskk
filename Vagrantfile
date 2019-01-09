
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
  salt.master_config = "/Users/edin/task2/master/master.conf"
  salt.minion_config = "/Users/edin/task2/minion/minion.conf"
  salt.master_key = "/Users/edin/task2/pki/master.pem"
  salt.master_pub = "/Users/edin/task2/pki/master.pub"
  salt.minion_key = "/Users/edin/task2/pki/minion.pem"
  salt.minion_pub = "/Users/edin/task2/pki/minion.pub"
  salt.seed_master = {"salt" => "/Users/edin/task2/pki/minion.pub"}
  config.vm.synced_folder '/Users/edin/task2/', '/srv/salt'  
  config.vm.network "forwarded_port", guest: 80, host: 9998
  config.vm.network "forwarded_port", guest: 8080, host: 9999
    end
end

end
