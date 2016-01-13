VBoxManage modifyvm "elasticsearch-1.osv" --intnet2 "virtualcloud" --nic2 intnet --nictype2 virtio --cableconnected2 on --nicpromisc2 allow-all
VBoxManage modifyvm "elasticsearch-2.osv" --intnet2 "virtualcloud" --nic2 intnet --nictype2 virtio --cableconnected2 on --nicpromisc2 allow-all
VBoxManage modifyvm "elasticsearch-3.osv" --intnet2 "virtualcloud" --nic2 intnet --nictype2 virtio --cableconnected2 on --nicpromisc2 allow-all
