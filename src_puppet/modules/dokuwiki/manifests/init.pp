class dokuwiki{

  include dokuwiki::package, dokuwiki::config

  Class['dokuwiki::package'] -> Class['dokuwiki::config']

}
