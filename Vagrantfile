# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  # config.vm.box = "gce"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = "8"
  end

  #config.vm.provider :google do |google|
    #google.google_project_id = "single-odyssey-133420"
    #google.google_client_email = "yamada@beijaflor.io"
    #google.zone = "us-central1-f"

    #google.google_json_key_location = "/Users/yamadapc/gce-keys.json"

    #google.auto_restart = false
    #google.on_host_maintenance = "TERMINATE"

    #google.zone_config "us-central1-f" do |zone1f|
        #zone1f.name = "phoenix-showdown"
        #zone1f.image = "ubuntu-trusty-v20160511" # ubuntu-1404-lts"
        #zone1f.machine_type = "n1-standard-32"
        #zone1f.preemptible = true
        #zone1f.zone = "us-central1-f"
        #zone1f.metadata = {}
        #zone1f.scopes = []
        #zone1f.tags = ['web', 'app1']
    #end
  #end

  config.vm.provision "shell", inline: <<-SHELL
    sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 575159689BEFB442
    echo 'deb http://download.fpcomplete.com/ubuntu trusty main'|sudo tee /etc/apt/sources.list.d/fpco.list

    sudo apt-get update
    sudo apt-get install -y golang git build-essential libssl-dev libevent-dev libevent-pthreads-2.0.5 stack

    git clone https://github.com/wg/wrk.git
    cd wrk
    make
    cp wrk /usr/local/bin

    sudo su vagrant -c "curl -fsS https://dlang.org/install.sh | bash -s gdc"
    sudo su vagrant -c "curl -fsS https://dlang.org/install.sh | bash -s ldc"
    sudo su vagrant -c 'bash -c "cd /vagrant; source ~/dlang/gdc-4.9.3/activate; cd vibe.d/benchmarker; dub build --build=release --compiler=gdc --verbose; mv benchmarker gdc-benchmarker"'
    sudo su vagrant -c 'bash -c "cd /vagrant; source ~/dlang/ldc-0.17.1/activate; cd vibe.d/benchmarker; dub build --build=release --compiler=ldc2 --verbose; mv benchmarker ldc-benchmarker"'

    sudo su vagrant -c 'bash -c "cd /vagrant; cd gin/benchmarker; mkdir -p $HOME/golang; GOPATH=$HOME/golang go get && go build"'

    sudo su vagrant -c 'bash -c "cd /vagrant; cd haskell/benchmarker; stack setup && stack build;"'
  SHELL
end
