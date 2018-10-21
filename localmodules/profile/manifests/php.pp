class profile::php {


  Yumrepo { 'remi-safe':
    descr      => 'Safe Remi\'s RPM repository for Enterprise Linux 7 - $basearch',
    mirrorlist => 'http://cdn.remirepo.net/enterprise/7/safe/mirror',
    enabled    => 1,
    gpgcheck   => 1,
    gpgkey     => 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
  }

  Yumrepo { 'remi-72':
    descr      => 'Remi\'s PHP 7.2 RPM repository for Enterprise Linux 7 $releasever - $basearch',
    mirrorlist => 'http://cdn.remirepo.net/enterprise/$releasever/php72/mirror',
    enabled    => 1,
    gpgcheck   => 1,
    gpgkey     => 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
  }

  Yumrepo { 'epel':
    descr          => 'Extra Packages for Enterprise Linux 7 - $basearch',
    mirrorlist     => 'https://mirrors.fedoraproject.org/mirrorlist?repo=epel-7&arch=x86_64',
    enabled        => 1,
    gpgcheck       => 1,
    gpgkey         => 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7',
  }

 class { 'php': 
   ensure => 'installed',
 }

 package { 'php-pdo':
   ensure => 'present',
 }

 package { 'php-msqlnd':
   ensure => 'present',
 }

 package { 'php-gd':
   ensure => 'present',
 }
 
 package { 'php-xml':
   ensure => 'present',
 }

 package { 'php-mbstring':
   ensure => 'present',
 }
  
 package {'php-mcrypt':
    ensure => 'installed'
  }

  package {'php-cli':
    ensure => 'installed'
  }
 
  package {'php-ldap':
    ensure => 'installed'
  }

  package {'php-zip':
    ensure => 'installed'
  }

  package {'php-fileinfo':
    ensure => 'installed'
  }
 

}
