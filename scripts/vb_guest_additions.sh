## Update VirtualBox Guest Additions to `v4.3.8`
# See http://docs.vagrantup.com/v2/virtualbox/boxes.html
echo 'start updating virtualbox guest additions'
apt-get install -y linux-headers-3.2.0-23-generic-pae dkms
wget http://download.virtualbox.org/virtualbox/4.3.8/VBoxGuestAdditions_4.3.8.iso
mkdir /media/VBoxGuestAdditions
mount -o loop,ro VBoxGuestAdditions_4.3.8.iso /media/VBoxGuestAdditions
sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm -f VBoxGuestAdditions_4.3.8.iso
umount /media/VBoxGuestAdditions
rmdir /media/VBoxGuestAdditions
echo 'end updating virtualbox guest additions'
