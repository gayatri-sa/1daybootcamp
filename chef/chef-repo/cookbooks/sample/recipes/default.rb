#
# Cookbook:: sample
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

if node['platform'] == 'ubuntu' || node['platform'] == 'debian'
    include_recipe 'sample::apache'
else
    include_recipe 'sample::centos'
end
