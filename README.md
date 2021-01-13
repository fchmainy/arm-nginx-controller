# arm-nginx-controller
Deploy a NGINX Controller from ARM Template

# Deploy a NGINX Controller 3.x on Ubuntu with Cloud Init

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffchmainy%2Farm-nginx-controller%2Fmain%2Fazuredeploy.json?token=AB7KNNSIWUEBUVU73DNLT2K773PUM" target="_blank">

    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=hhttps%3A%2F%2Fraw.githubusercontent.com%2Ffchmainy%2Farm-nginx-controller%2Fmain%2Fazuredeploy.json?token=AB7KNNSIWUEBUVU73DNLT2K773PUM" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template allows you to create a Linux Ubuntu 18.04 LTS Virtual Machine on a Standard D4 V2 Azure Compute instance with the correct NSGs. This template also deploys a Storage Account, Virtual Network, Public IP address, NSG, and a Network Interface. It creates two sample users, both with the password **secret**.

## Verifying the results
- Custom Data in the file `/var/lib/cloud/instance/user-data.txt`.
- Creation of a file called `/home/demo/example`
- User accounts using `cut -d: -f1 /etc/passwd`
- Web server running on port 80 (nginx) with hello world.
- Logs at `/var/log/cloud-init.log` and `/var/log/cloud-init-output.log`