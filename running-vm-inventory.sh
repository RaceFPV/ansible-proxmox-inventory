#!/bin/bash
export PYTHONWARNINGS="ignore:Unverified HTTPS request"
ansible -i auto.proxmox.yaml proxmox_all_running -m debug -a 'msg="{{inventory_hostname}} {{ansible_host}}"' | grep msg | sed 's/\"//g' | sed 's/msg\://g' | sed 's/^[ \t]*//g'