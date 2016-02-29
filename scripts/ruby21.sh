## Update ruby to 2.1
# See https://github.com/travis-ci/travis.rb#other-unix-systems
echo 'start installing ruby2.1'
apt-get install -y python-software-properties
apt-add-repository -y ppa:brightbox/ruby-ng
apt-get update
apt-get install -y ruby2.1 ruby-switch
ruby-switch --set ruby2.1
apt-get install -y ruby2.1-dev
echo 'end installing ruby2.1'
