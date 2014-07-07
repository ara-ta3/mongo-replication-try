cp -rf /vagrant/script/mongodb.repo /etc/yum.repos.d/mongodb.repo
yum install -y mongodb-org
cp -rf /vagrant/script/mongod.conf /etc/mongod.conf
service mongod restart
service iptables stop

