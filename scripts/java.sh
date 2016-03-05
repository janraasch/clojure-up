## Java
echo 'start installing java'
apt-add-repository ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java8-installer

bash_profile='~/.bash_profile'
v_bash_profile="${home_vagrant}/.bash_profile"
fish_config='~/.config/fish/config.fish'
v_fish_config="${home_vagrant}/.config/fish/config.fish"

echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> $bash_profile
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> $v_bash_profile
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> $bash_profile
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> $v_bash_profile
echo 'set -g -x JAVA_HOME /usr/lib/jvm/java-8-oracle' >> $fish_config
echo 'set -g -x JAVA_HOME /usr/lib/jvm/java-8-oracle' >> $v_fish_config
echo 'set -g -x PATH $PATH $JAVA_HOME/bin' >> $fish_config
echo 'set -g -x PATH $PATH $JAVA_HOME/bin' >> $v_fish_config

unset bash_profile
unset v_bash_profile
unset fish_config
unset v_fish_config
echo 'end installing java'
