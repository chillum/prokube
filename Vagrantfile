Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/bionic64'
  config.vm.network 'private_network', type: 'dhcp'

  # tested with vbox only
  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '1024'
    vb.cpus = 2 # kubeadm does not work on 1 cpu
  end

  config.vm.provision 'shell', path: 'provision.sh'
  config.vm.define 'master' do |master|
    master.vm.hostname = 'master'
    master.vm.provision 'shell', path: 'master.sh'
  end
  config.vm.define 'node' do |node|
    node.vm.hostname = 'node'
    node.vm.provision 'shell', path: 'node.sh'
  end
end