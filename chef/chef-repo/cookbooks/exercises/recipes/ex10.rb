template 'file from template' do
  source 'index.html.erb'
  path   "/root/index.html"
  variables(
    title: "Let's Learn Chef",
    desc: 'DevOps Professionals!'
  )
end
