case $operatingsystem {
  redhat, centos: { $servicename = 'ntpd'}
  debian, ubuntu: { $servicename = 'ntp'}
}

notify {"Shutting down $servicename":}

service {"$servicename":
  ensure => stopped,
  enable => false,
}
