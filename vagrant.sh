#!/bin/bash

if dpkg -l puppet-common >> /dev/null ; 
then
	echo 'Skipping Bootstrap'
else
	echo 'Starting Bootstrap'
	# CUSTOM APT CONFIGURATION
	# add puppetlabs .deb source
	wget -nc -nv http://apt.puppetlabs.com/puppetlabs-release-precise.deb && dpkg -i puppetlabs*.deb
	apt-get update && apt-get install -y puppet-common
fi

cp -Rv /vagrant/src_puppet/* /etc/puppet

puppet apply /etc/puppet/manifests/site.pp
