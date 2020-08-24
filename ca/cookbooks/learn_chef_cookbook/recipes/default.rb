#
# Cookbook:: learn_chef_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'all platform' do
    frequency 86400
    action :periodic
end

include_recipe 'learn_chef_cookbook::apache'
include_recipe 'learn_chef_cookbook::dbsetup'
include_recipe 'learn_chef_cookbook::app'