current_dir = File.dirname(__FILE__)
ssl_verify_mode 	:verify_none
log_level               :info
log_location            STDOUT
cookbook_path           ["#{current_dir}/../cookbooks"]
role_path           	["#{current_dir}/../roles"]
node_name               "chefuser"
chef_server_url 	"https://ec2-3-108-58-37.ap-south-1.compute.amazonaws.com/organizations/testorg"
Ohai.config['disabled_plugins'] = [ :shard_seed ]
