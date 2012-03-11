default['elasticsearch']['version'] = '0.18.7'

default['elasticsearch']['prefix'] = '/opt'
default['elasticsearch']['configdir'] = '/etc/elasticsearch'
default['elasticsearch']['datadirs'] = ['/var/lib/elasticsearch']
default['elasticsearch']['logdir'] = '/var/log/elasticsearch'
default['elasticsearch']['workdir'] = '/tmp'

default['elasticsearch']['group'] = 'elasticsearch'
default['elasticsearch']['user'] = 'elasticsearch'

default['elasticsearch']['index']['number_of_replicas'] = 0
default['elasticsearch']['index']['number_of_shards'] = 1
default['elasticsearch']['limits']['memlock'] = 'unlimited'
default['elasticsearch']['limits']['nofile'] = 64000
default['elasticsearch']['max_mem'] = '1g'
default['elasticsearch']['min_mem'] = '256m'
default['elasticsearch']['mlockall'] = 'true'
default['elasticsearch']['network']['host'] = '127.0.0.1'
