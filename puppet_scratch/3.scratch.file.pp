file {'/tmp/file4':
  ensure  => present,
  content => "more tests\nhonest\n",
  before  => Notify['fileCreated'],
  mode    => 0600,
}

notify {'fileCreated':
  message => "The file has been created!",
}

notify {'creatingFile':
  message => 'Creating file',
}

Notify['creatingFile']->File['/tmp/file4']
