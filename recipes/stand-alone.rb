# Setup a stand-alone elasticsearch server

include_recipe "elasticsearch::_dependencies"
include_recipe "elasticsearch::_group"
include_recipe "elasticsearch::_user"
include_recipe "elasticsearch::_source"
include_recipe "elasticsearch::_directories"
include_recipe "elasticsearch::_runit"
include_recipe "elasticsearch::_set_limits"
include_recipe "elasticsearch::_config"
