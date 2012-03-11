# Setup runit service

include_recipe "runit"

runit_service "elasticsearch" do
  env 'ES_INCLUDE' => "#{node['elasticsearch']['configdir']}/in.sh"
end
