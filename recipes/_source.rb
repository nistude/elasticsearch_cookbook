# Install from source

remote_file "#{Chef::Config[:file_cache_path]}/elasticsearch-#{node['elasticsearch']['version']}.tar.gz" do
  source "https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-#{node['elasticsearch']['version']}.tar.gz"
  mode "0444"
  action :create_if_missing
end

execute "extract elasticsearch" do
  cwd Chef::Config[:file_cache_path]
  command "tar xfz elasticsearch-#{node['elasticsearch']['version']}.tar.gz -C #{node['elasticsearch']['prefix']}"
  creates "#{node['elasticsearch']['prefix']}/elasticsearch-#{node['elasticsearch']['version']}"
  umask "0002"
end
