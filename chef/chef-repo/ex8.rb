file '/root/file1.txt' do
    content 'I am the first file. Notify the log'
    notifies :write, 'log[file1 created]', :immediate
    notifies :write, 'log[file1 going to be created]', :before
end

log 'file1 created' do
  message 'I am called after file1 is created'
  level :info
end

log 'file1 going to be created' do
  message 'I am called before file1 is created'
  level :info
end
