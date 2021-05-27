node.default['messages']['welcome'] = 'Hello and welcome to Chef! This is from the recipe'

template 'file from template' do
  source 'index.html.erb'
  path   "/root/index.html"
  variables(
    title: "Let's Learn Chef",
    desc: 'DevOps Professionals!'
  )
end
