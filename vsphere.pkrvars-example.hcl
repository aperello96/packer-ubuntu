##################################################################################
# VARIABLES
##################################################################################

# Credentials

vcenter_username                = "administrator@vsphere.local"
vcenter_password                = "superSecretPassword"

# vSphere Objects

vcenter_insecure_connection     = true
vcenter_server                  = "192.168.1.105"
vcenter_datacenter              = "Datacenter-1"
vcenter_host                    = "192.168.1.101"
vcenter_datastore               = "HDD"
vcenter_network                 = "VM Network"
vcenter_folder                  = "Templates" #This is the folder where the template will be stored

# ISO Objects
iso_path                        = "[HDD] /packer_cache/ubuntu-22.04.3-live-server-amd64.iso"
