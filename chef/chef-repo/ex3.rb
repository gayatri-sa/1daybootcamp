remote_file 'copy dummy file' do
  source 'file:///chef/chef-repo/dummy.txt'
  path '/root/copy.txt'
end
