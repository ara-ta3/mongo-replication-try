cp -rf /vagrant/script/mongodb.repo /etc/yum.repos.d/mongodb.repo
yum install -y mongodb-org
service mongod restart
service iptables stop
