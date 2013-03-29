class apache{

  include apache::package, apache::service

  Class['apache::package'] ~> Class['apache::service']

}
