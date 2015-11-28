apt-get -qqy update
apt-get -qqy install git
apt-get -qqy install postgresql
apt-get -qqy install libpq-dev python-dev
apt-get -qqy install python-pip

pip install virtualenv

git clone https://github.com/brenj/udacity.git
mv ./udacity /vagrant

su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'
