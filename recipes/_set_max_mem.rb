# dynamically calculate max locked memory

node.set['elasticsearch']['max_mem'] = "#{(node['memory']['total'].to_i / 5) / 1024}m"
