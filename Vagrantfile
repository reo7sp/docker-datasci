Vagrant.configure('2') do |config|
  config.vm.box = 'hashicorp/precise64'

  config.vm.network "forwarded_port", guest: 8888, host: 8888
  config.vm.synced_folder '.', '/vagrant'

  config.vm.provision 'docker' do |d|
    d.run 'reo7sp/docker-datasci', args: '-d -v /vagrant/notebooks:/home/jovyan/work'
  end
end
