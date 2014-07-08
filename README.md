mongo-replication-try
=====================

## 概要

MongoDBが入ったサーバを３台立てて、レプリカセットを試します。

PRIMARY・SECONDARY・ARBITERがそれぞれ１台になります。

適当に遊ぶ用

## 環境

* vagrant 1.5.3
* virtualbox 4.3.10

## Install

```
vagrant up
```

全サーバが起動したらReplicationの設定を行います。

scriptを用意したのでそれで一瞬です。

```
$ vagrant ssh web1
Last login: Tue Jul  8 13:09:48 2014 from 10.0.2.2
Welcome to your Vagrant-built virtual machine.
[vagrant@localhost ~]$sh /vagrant/script/master-setup.sh
```

やっていることは以下と同様です。

```
$ vagrant ssh web1
Last login: Tue Jul  8 13:09:48 2014 from 10.0.2.2
Welcome to your Vagrant-built virtual machine.
[vagrant@localhost ~]$mongo
MongoDB shell version: 2.6.3
connecting to: test
> config = {_id: 'repltry',
  members: [
  {_id: 0, host: '192.168.56.101:27017'},
  {_id: 1, host: '192.168.56.102:27017'},
  {_id: 2, host: '192.168.56.103:27017', arbiterOnly: true}
  ]
  }
> rs.initiate(config)
```

> _id : 'repltry'

は[mongo.confの設定](https://github.com/tarata/mongo-replication-try/blob/master/script/mongod.conf#L11 )に合わせています。

### それぞれのサーバへのログイン

PRIMARY Server

```
vagrant ssh web1
```

SECONDARY Server

```
vagrant ssh web2
```

ARBITER Server

```
vagrant ssh web3
```
