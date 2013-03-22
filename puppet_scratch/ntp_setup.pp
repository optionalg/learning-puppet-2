case $operatingsystem {
  redhat, centos: { $servicename = 'ntpd'
                    $source_file = '/root/puppet_scratch/ntp.conf.el' }
  debian, ubuntu: { $servicename = 'ntp'
                    $source_file = '/root/puppet_scratch/ntp.conf.debian' }
}

package {'ntp':
  provider => yum,
  ensure   => latest,
  before   => Notify[package],
}

service {"$servicename" :
  ensure     => running,
  enable     => true,
  hasrestart => true,
  require    => File['/etc/ntp.conf'],
  before     => Notify[service],
}

file {'/etc/ntp.conf' :
  source  => $source_file,
  mode    => 0640,
  ensure  => file,
  backup  => '.puppet_bak',
  require => Package['ntp'],
  before  => Notify[file],
}

notify {'package':
  message => "Installing package ntp",
}

notify {'service':
  message => "Starting service $servicename",
}

notify {'file':
  message => "Copying $source_file",
}
