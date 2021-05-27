package 'apache2' do
    action :install
    only_if {node['platform'] == 'ubuntu'}
end

service 'apache2' do
    action [ :enable, :start ]
end
