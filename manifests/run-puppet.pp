# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron { 'run-puppet':
  command => 'sudo /usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}

file { '/tmp/hi_there.txt':
  ensure => file,
  content => "testing cron job",
}
