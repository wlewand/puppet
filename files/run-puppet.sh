#!/bin/bash
cd /etc/puppetlabs/code/environments/production && sudo git pull
/opt/puppetlabs/bin/puppet apply manifests/
