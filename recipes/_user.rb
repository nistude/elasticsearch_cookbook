# Install system user

user node['elasticsearch']['user'] do
  comment 'Elasticsearch user'
  gid node['elasticsearch']['group']
  shell '/bin/false'
  system true
end
