#Vagrant::Config.run do |config|
Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
#  config.vm.box_url = "../../output/mongodb_precise64.box"

  # config.vm.boot_mode = :gui
  config.ssh.forward_x11 = true

  # Run bootstrap.sh to install/provision machine
    config.vm.provision :shell, :path => 'bootstrap.sh'
    config.vm.provision :shell, :path => 'installMongo.sh'
    config.vm.provision :shell, :path => 'copyAndMoveHostFile.sh'
    config.vm.provision :shell, :path => 'copyMongodConfAndRestart.sh'
    #optional if you wish to have vim installed on your vms
    #config.vm.provision :shell, :path => 'installVim.sh'

  config.vm.define :mongodb1 do |mongodb1|
    mongodb1.vm.hostname = "mongodb1"
    mongodb1.vm.network "private_network", ip:  "10.0.0.2"

    mongodb1.vm.network "forwarded_port", guest: 27017, host: 27017
    mongodb1.vm.network "forwarded_port", guest: 28017, host: 28017
  end

  config.vm.define :mongodb2 do |mongodb2|
    mongodb2.vm.hostname = "mongodb2"
    mongodb2.vm.network "private_network", ip:  "10.0.0.3"

    mongodb2.vm.network "forwarded_port", guest: 27018, host: 27018
    mongodb2.vm.network "forwarded_port", guest: 28018, host: 28018
  end

  config.vm.define :mongodb3 do |mongodb3|
    mongodb3.vm.hostname = "mongodb3"
    mongodb3.vm.network "private_network", ip:  "10.0.0.4"

    mongodb3.vm.network "forwarded_port", guest: 27019, host: 27019
    mongodb3.vm.network "forwarded_port", guest: 28019, host: 28019
  end

end
