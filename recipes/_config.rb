# Install configuration files

template "#{node['elasticsearch']['configdir']}/in.sh" do
  owner node['elasticsearch']['user']
  group node['elasticsearch']['group']
  mode 0755
  notifies :restart, 'service[elasticsearch]'
end

template "#{node['elasticsearch']['configdir']}/elasticsearch.yml" do
  owner node['elasticsearch']['user']
  group node['elasticsearch']['group']
  mode 0644
  notifies :restart, 'service[elasticsearch]'
end
