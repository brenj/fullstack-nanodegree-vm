apt-get -qqy update
apt-get -qqy install git
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install python-pip

git clone https://github.com/brenj/udacity.git
mv ./udacity /vagrant

su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'
