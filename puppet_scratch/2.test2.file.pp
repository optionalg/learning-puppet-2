ssh_authorized_key { 'root@learn.localdomain':
  user    => 'root',
  type    => ssh-rsa,
  ensure  => present,
  key     => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAyKhe8jTQ22ND+hVQbWJuiYEV+N9iL3rdJQeihCoLTTwo84OhAmdyDBpbeTK5A8fRV4FUPFAd7jc6hyl7PbcEOHQp/yGoS05S8fPdeYmjX+hKe6pNT/8gmfWsbuDZlEC4jtP22Fwtffz7Wj4PbhIYWlJ+rCuNWNxPgLzDjEr4J2hsnat1HlbyGLCt5Zfo/DrFIJbxKsJffMiJ+TQXBRO2ZxZ3Nt3xrw+AsBtq0TJJm+SMbq2M++FuMPDikLXN+95Lk6z2qsUiizDUV8mP6y0hPEHAj7ckvPFe/VWYnBw2+Hjb333rF82qleDHEpmOnXb+0DwYw1Cr05zwbuvvSFr4SQ==',
}

sshkey {'root@learn.localdomain':
  ensure => present,
  key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAyW6lNafnwe3YMiA0rgDlO66QBMtAEZqBqDyzDWQNMVeNJX/eYIJXnrFE7QXFfXdSv93lAFpVWZ2cYuh1CYQyTdjsK8Kl6eniG2qnDKOjQJt1lI4R1qdGvA2ZvB2BHGfcMHtxqWP+cPKkJo8xKCHJCYu0IfAFueiLebSESaALlbCKTSICp/+nebrP7ZRG0Tu1gOFXboNpj8jsBWJIZ0TyoyXy/XCVc9/OnRLySHFzgEulX4TMyFe7ngT0st2pt/piyPYI4YsrSRWKpuYT/ozyQ5QNpYasTQZ7Ishz14N4tAQp6hgTRiibctvMDzOWHQbhg35gj/JDTbDiY/XBxRlDGQ==',
  name   => 'learn',
  type   => ssh-rsa,
}
