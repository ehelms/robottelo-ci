#!/bin/bash

rm -f .fixtures.yml

cat <<EOT>> .fixtures.yml
fixtures:
  repositories:
    apt:      'git://github.com/puppetlabs/puppetlabs-apt'
    concat:   'git://github.com/puppetlabs/puppetlabs-concat'
    dhcp:     'git://github.com/theforeman/puppet-dhcp'
    dns:      'git://github.com/theforeman/puppet-dns'
    extlib:
      repo: 'git://github.com/puppet-community/puppet-extlib'
      ref:  'v0.11.3'
    foreman:  'https://${GIT_HOSTNAME}/${GIT_ORGANIZATION}/puppet-foreman.git'
    mysql:    'git://github.com/puppetlabs/puppetlabs-mysql.git'
    puppet:   'git://github.com/theforeman/puppet-puppet'
    stdlib:   'git://github.com/puppetlabs/puppetlabs-stdlib.git'
    tftp:     'git://github.com/theforeman/puppet-tftp'
    xinetd:   'git://github.com/puppetlabs/puppetlabs-xinetd.git'


  symlinks:
    foreman_proxy: "#{source_dir}"
EOT
