class dokuwiki::config{

  file { '/etc/dokuwiki/apache.conf' :
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('dokuwiki/etc/dokuwiki/apache.conf.erb'),
    notify  => Class['apache::service'],
  }

}
