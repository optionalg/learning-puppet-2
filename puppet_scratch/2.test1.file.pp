package {'apache_package':
  ensure   => installed,
  alias    => 'apache',
  provider => yum,
  name     => 'httpd',
}

service {'httpd':
  enable  => true,
  ensure  => running,
  require => Package[apache],
}
