Vagrant.configure("2") do |config|
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.define "ns3-lora" do |server|
    server.vm.box = "bento/ubuntu-19.04"
    # network
    # server.vm.network "private_network", ip: "172.16.0.10", netmask: "255.255.255.0"

    # do basic setup
    server.vm.provision "shell", privileged: true, path: "ns3-pre.sh"

    # do basic setup
    server.vm.provision "shell", privileged: false, path: "ns3-setup.sh"

  end

end
