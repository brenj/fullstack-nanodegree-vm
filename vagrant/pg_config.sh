curl -sL https://deb.nodesource.com/setup_9.x | bash -
apt-get -qqy install git
apt-get -qqy install postgresql
apt-get -qqy install libpq-dev python-dev
apt-get -qqy install python-pip
apt-get -qqy install nodejs

npm install -g bower

pip install virtualenv

git clone https://github.com/brenj/tech-quote.git
mv ./tech-quote /vagrant

su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'
