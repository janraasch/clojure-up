## Update VirtualBox Guest Additions to `v5.0.14`
# See http://docs.vagrantup.com/v2/virtualbox/boxes.html
echo 'start updating virtualbox guest additions'
apt-get install -y linux-headers-3.13.0-77-generic dkms
wget http://download.virtualbox.org/virtualbox/5.0.14/VBoxGuestAdditions_5.0.14.iso
mkdir /media/VBoxGuestAdditions
mount -o loop,ro VBoxGuestAdditions_5.0.14.iso /media/VBoxGuestAdditions
sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm -f VBoxGuestAdditions_5.0.14.iso
umount /media/VBoxGuestAdditions
rmdir /media/VBoxGuestAdditions
echo 'end updating virtualbox guest additions'
