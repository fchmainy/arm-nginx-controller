#!/bin/bash

export TF_VAR_ARM_CLIENT_ID=""
export TF_VAR_ARM_CLIENT_SECRET=""
export TF_VAR_ARM_SUBSCRIPTION_ID=""
export TF_VAR_ARM_TENANT_ID=""

export TF_VAR_resource_group="FCH"
export TF_VAR_prefix="fch-"
export TF_VAR_hostname="controller"
export TF_VAR_location="eastus"
export TF_VAR_virtual_network_name="fch-vnet"
export TF_VAR_subnet_name="management"
export TF_VAR_storage_account_tier="Standard"
export TF_VAR_storage_replication_type="LRS"
export TF_VAR_vm_size="Standard_D4_V2"
export TF_VAR_image_publisher="Canonical"
export TF_VAR_image_offer="UbuntuServer"
export TF_VAR_image_sku="18.04-LTS"
export TF_VAR_image_version="latest"
export TF_VAR_admin_username=""
export TF_VAR_admin_password=""
export TF_VAR_source_network="80.127.208.126/32"

export TF_VAR_ctrltarball="https://where.to.get/the.controller.tar.gz"
export TF_VAR_ctrlfqdn="target.controller.fqdn"
export TF_VAR_vmusername=""
export TF_VAR_useremail=""
export TF_VAR_ctrlpassword=""
export TF_VAR_license="FNI-..."