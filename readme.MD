# A quick script/inventory file to get the VM name and current ip address of ubuntu machines from the proxmox api via ansible

* This assumes you have filled in the following environment variables before starting:
    PROXMOX_URL #url of the proxmox server to connect to (should be https://<ip>:8006)
    PROXMOX_USER #the proxmox username (ex: ansible@pve)
    PROXMOX_TOKEN_ID #the proxmox token id associated to that user (ex: ansible)
    PROXMOX_TOKEN_SECRET # the proxmox token secret (ex: 12312903123-213123-12313)

* To start simply run ./running-vm-inventory.sh and it will output a formatted listing of running vm's and their ip addresses. 

* This script assumes a subnet of /16, if you are using a /24 or other subnet range, edit 'auto.proxmox.yaml''s compose: ansible_host last line to match the subnet

* This script also assumes you are using standard ubuntu with the default nic of 'ens18', again edit 'auto.proxmox.yaml' if different