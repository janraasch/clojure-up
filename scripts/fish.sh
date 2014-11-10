## Fish
# Install and make it the default shell.
# See http://hackercodex.com/guide/install-fish-shell-mac-ubuntu/
echo 'start installing fish'
apt-get update
apt-get install -y python-software-properties
apt-add-repository ppa:fish-shell/release-2
apt-get update
apt-get install -y fish
echo '/usr/bin/fish' | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
chsh vagrant -s /usr/bin/fish
mkdir -p ~/.config/fish
su vagrant -c 'mkdir -p ~/.config/fish' -l
echo 'end installing fish'
