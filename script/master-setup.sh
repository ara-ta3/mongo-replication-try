mongo --quiet --eval="config = {_id: 'repltry', members: [{_id: 0, host: '192.168.56.101:27017'},{_id: 1, host: '192.168.56.102:27017'},{_id: 2, host: '192.168.56.103:27017', arbiterOnly: true}]};rs.initiate(config)"
