class apache::package{

  package{ [
  	'apache2.2-bin',
    'apache2.2-common',
    'apache2-utils',
    'apache2-mpm-prefork',
  ]:
    ensure => latest,
  }

}
