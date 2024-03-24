#!/usr/bin/env bash
#using puppet to make changes to ur config file
exec { 'echo':
  path    => '/usr/bin:/bin',  # Add '/' before 'usr/bin'
  command => 'echo "    IdentityFile ~/.ssh/school\n    PasswordAuthentication no" >> /etc/ssh/ssh_config',
  returns => [0,1],
}

