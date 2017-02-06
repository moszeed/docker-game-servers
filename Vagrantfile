# -*- mode: ruby -*-
# vi: set ft=ruby :

#original: https://gist.github.com/lmakarov/54302df8ecfc87b36320
$install_docker_compose = <<EOF

    DOCKER_COMPOSE_VERSION=1.8.1

    # Download docker-compose to the permanent storage
    echo 'Downloading docker-compose to the permanent VM storage...'
    sudo mkdir -p /var/lib/boot2docker/bin
    sudo curl -sL https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` -o /var/lib/boot2docker/bin/docker-compose
    sudo chmod +x /var/lib/boot2docker/bin/docker-compose
    sudo ln -sf /var/lib/boot2docker/bin/docker-compose /usr/local/bin/docker-compose

    # Making the symlink persistent via bootlocal.sh
    echo 'Writing to bootlocal.sh to make docker-compose available on every boot...'
    cat <<SCRIPT | sudo tee -a /var/lib/boot2docker/bootlocal.sh > /dev/null
        # docker-compose
        sudo ln -sf /var/lib/boot2docker/bin/docker-compose /usr/local/bin/docker-compose
    SCRIPT

    sudo chmod +x /var/lib/boot2docker/bootlocal.sh

    echo "\n"
    echo "succesful installed docker-compose, now wait for initalising"
    sleep 5
EOF

$run_docker_compose = <<EOF

    #set hostname, same as host os (with addition)
    sudo sethostname #{`hostname`[0..-2]}-docker

EOF

#
# vagrant configuration
#
Vagrant.configure(2) do |config|

    config.vm.box = "moszeed/boot2docker"

    #config for app
    config.vm.define :gameserver do |gameserver|

        #network
        gameserver.vm.network "forwarded_port", guest: 28960, host: 28960
        gameserver.vm.network "forwarded_port", guest: 28960, host: 28960, protocol: "udp"
        gameserver.vm.network "public_network"

        #shared folders
        gameserver.vm.synced_folder ".", "/gameserver"
        gameserver.vm.synced_folder ".", "/vagrant", disabled: true

        #scripts
        gameserver.vm.provision :shell, :inline => $install_docker_compose, :privileged => false
        gameserver.vm.provision :shell, :inline => $run_docker_compose, :privileged => false, run: "always"

    end

    #set name for vm
    config.vm.provider "virtualbox" do |v|
        v.name = "gameserver"
        v.customize ["modifyvm", :id, "--memory", "2048"]
        v.customize ["sharedfolder", "add", :id, "--name", "www", "--hostpath", (("//?/" + File.dirname(__FILE__) + "/www").gsub("/","\\"))]
        v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    end

end
