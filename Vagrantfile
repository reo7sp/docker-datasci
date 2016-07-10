Vagrant.configure('2') do |config|
  config.vm.box = 'hashicorp/precise64'

  config.vm.forward_port 8888, 8888
  config.vm.synced_folder '.', '/vagrant'

  config.vm.provision 'docker' do |d|
    d.build_image '/vagrant', args: '-t "reo7sp/docker-datasci"'
    d.run 'reo7sp/docker-datasci', args: '-v /vagrant/notebooks:/notebooks'
  end
end
