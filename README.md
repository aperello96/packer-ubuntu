# Packer Ubuntu 22.04 Image in VMware
Create Ubuntu 22.04 images in VMware

## To generate a hashed password for identity in user-data
Using mkpasswd
On Ubuntu you need to install whois package to get mkpasswd utility.

```sh
apt-get install whois
mkpasswd -m sha-512 --rounds=4096
```

If PASSWORD is missing then it is asked interactively.

Example:
```sh
Password:
$6$KU2P9m78xF3n$noEN/CV.0R4qMLdDh/TloUplmJ0DLnqi6/cP7hHgfwUu.D0hMaD2sAfxDT3eHP5BQ3HdgDkKuIk8zBh0mDLzO1
```

## Check if a new version of ubuntu is available.

Check if url of ubuntu on "variables.pkrvars100GBdisk.hcl" file is still working. If not, update with the new url of the new ubuntu version and modify checksum

## Create your own "vsphere.pkvars.hcl"

Modify the variables of "vsphere.pkrvars-example.hcl" by yours and rename it to "vsphere.pkrvars.hcl"

## Running packer build with hcl

```sh
packer build -force -on-error=ask -var-file variables.pkrvars100GBdisk.hcl -var-file vsphere.pkrvars.hcl ubuntu-22.04.pkr.hcl
```

## Troubleshooting
- If packer gets stuck on `Waiting for IP` you may want to check your DHCP server. I'm using a home router and it had too many leases from running packer many times. I had to flush inactive DHCP clients, or reboot the router which is faster.
- If VM fails on boot, comment lines 7-10 of user-data. 