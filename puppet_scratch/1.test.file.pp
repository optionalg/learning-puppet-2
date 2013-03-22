file {'motd':
  ensure      => present,
  path        => '/etc/motd',
  mode        => 0644,
  content     => "Puppet says: this is your new motd\nSay hello!\n",
}
