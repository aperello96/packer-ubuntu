##################################################################################
# VARIABLES
##################################################################################

# HTTP Settings

http_directory = "http"

# Virtual Machine Settings

vm_name                     = "Ubuntu-2204-Template-20GB-Thin"
vm_guest_os_type            = "ubuntu64Guest"
vm_version                  = 14
vm_firmware                 = "bios"
vm_cdrom_type               = "sata"
vm_cpu_sockets              = 2
vm_cpu_cores                = 2
vm_mem_size                 = 2048
vm_disk_size                = 20480
thin_provision              = true
disk_eagerly_scrub          = false
vm_disk_controller_type     = ["pvscsi"]
vm_network_card             = "vmxnet3"
vm_boot_wait                = "5s"
ssh_username                = "ubuntu"
ssh_password                = "ubuntu"

# ISO Objects

iso_file                    = "ubuntu-22.04.3-live-server-amd64.iso"
iso_checksum                = "a4acfda10b18da50e2ec50ccaf860d7f20b389df8765611142305c0e911d16fd"
iso_checksum_type           = "sha256"
iso_url                     = "https://releases.ubuntu.com/jammy/ubuntu-22.04.3-live-server-amd64.iso" 
# Scripts

shell_scripts               = ["./scripts/setup_ubuntu2204_withDocker.sh"]
