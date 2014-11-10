## Leiningen
# for automating Clojure projects without setting your hair on fire
# http://leiningen.org/
echo 'start installing leiningen'
cd /usr/bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x lein
lein
su vagrant -c 'lein'
cd ~
echo 'end installing leiningen'
