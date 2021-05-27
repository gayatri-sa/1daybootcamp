#
# Cookbook:: sample
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'apache2' do
   action :install
end

service 'apache2' do
   action [ :enable, :start ]
end

template 'file from template' do
   path '/var/www/html/index.html'
   source 'custom-index.erb'
   variables(
       title: "Let's Learn Chef",
       desc: "DevOps Professionals at Work!"
   )
end
