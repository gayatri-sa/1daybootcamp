package 'apache2' do
    action :install
end

service 'apache2' do
    action [ :enable, :start ]
end

package 'PHP-Apache-Module' do
    package_name 'libapache2-mod-php'
    action :install
    notifies :restart, 'service[apache2]', :immediate
end

# Check exercises policyfile to see PHP cookbook
