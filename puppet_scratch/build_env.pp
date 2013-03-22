# build an development environment as follows:
# redhat/centos: gcc
# debian/ubuntu: gcc, build-essential

package { 'gcc':
  ensure   => latest,
  provider => yum,
}

if ($operatingsystem == 'debian') or ($operatingsystem == 'ubuntu') {
  package {'build-essential':
    ensure => latest,
  provider => yum,
  }
}
