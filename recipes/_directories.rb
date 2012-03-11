# Create missing directories

[ node['elasticsearch']['configdir'],
  node['elasticsearch']['datadirs'],
  node['elasticsearch']['logdir']
].flatten.compact.each do |dir|
  directory dir do
    owner node['elasticsearch']['user']
    group node['elasticsearch']['group']
    mode '0755'
    recursive true
  end
end
