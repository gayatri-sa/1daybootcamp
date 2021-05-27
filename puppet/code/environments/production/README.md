# Node
### Ensure that the agent is intalled and the conf file is et
```nano /etc/puppetlabs/puppet/puppet.con```
### First puppet agent call will generate the CSR which needs to be accepted/signed by the server
```puppet agent -t```
# Server
### Accept/Sign the CSR
```
puppetserver ca list
puppetserver ca sign --certname <certname>
```
### Create the folders (defualt environment is production)
```
mkdir -p /etc/puppetlabs/code/environments/production/manifests
mkdir -p /etc/puppetlabs/code/environments/production/modules
```
### Create site.pp to set the node catalog
```
nano /etc/puppetlabs/code/environments/production/manifests/site.pp
node 'puppetnode1' {
    include sample
}
```
### Generate new module & and the module class (init.pp)
```
cd /etc/puppetlabs/code/environments/production/manifests/modules
pdk new module --skip-interview gsa-sample
pdk new class sample
```
### Generate addition manifest files (classes)
```
cd /etc/puppetlabs/code/environments/production/manifests/modules/sample
pdk new class sample::classa
```
