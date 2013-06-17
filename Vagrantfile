# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "berks-example-berkshelf"
  config.vm.box = "misheska-ubuntu-12.04"
  config.vm.box_url = "https://www.dropbox.com/s/m47nubjupedduvh/misheska-ubuntu-12.04.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.omnibus.chef_version = :latest
  config.ssh.max_tries = 40
  config.ssh.timeout   = 120
  config.berkshelf.enabled = true
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }

    chef.run_list = [
        "recipe[berks_example::default]"
    ]
  end
end
