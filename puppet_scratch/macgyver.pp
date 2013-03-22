user { macgyver:
    ensure     => present,
    managehome => true,
    uid        => '999',
    shell      => '/bin/ksh',
    home       => '/home/macgyver',
}
