# arm-nginx-controller
Deploy a NGINX Controller from ARM Template

# Deploy a NGINX Controller 3.x on Ubuntu




[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffchmainy%2Farm-nginx-controller%2Fmain%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffchmainy%2Farm-nginx-controller%2Fmain%2Fazuredeploy.json)

The template is intended to be deployed in an existing stack. Therefore it does not create the Resource Group, the VNET and the subnets.

Input Field Explanation:
- Resource Group: Your existing Resource Group. 
- Virtual Network Name
- Subnet Name: Your management subnet.
- VM DNS Name: name of the instance. Any created object will be prefixed with this name.
- Admin Username: VM username (SSH Access)
- Authentication Type: choose whether you want to connect using an SSH Public Key (recommended) or a password.
- Admin Password or key: if you choose SSH Public Key, paste the RSA Public Key (ex: .ssh/id_rsa.pub). It will be added to the authorized keys of the VM.
- Controller tar Ball URL: HTTP or HTTPS url where to download the .tar.gz archive of the controller.
- User Email: administrator email address used to authentify to the controller.
- Controller License: License Access Token string.
- Restricted Src Address: IP address or address range in CIDR notation, or asterisk for all sources to restrict management access to a specific network or address.