package 'httpd' do
    action :install
    only_if {node['platform'] == 'centos' || node['platform'] == 'redhat'}
end

service 'httpd' do
    action [ :start ]
end
