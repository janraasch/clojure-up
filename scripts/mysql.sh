## MySQL
# Enable truly non interactive apt-get installs.
# Otherwise `mysql` keeps asking for a `root` password.
echo 'start installing mysql'
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y mysql-server
echo 'end installing mysql'
