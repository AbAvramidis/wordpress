class profile::wp {

 #copy wordpress to tmp 
 file { '/var/www/html/latest.tar.gz':
    
    ensure => 'present',
    source => 'puppet:///modules/profile/latest.tar.gz',
    recurse => 'remote',
    owner => 'root',
    group => 'root',
    mode => '666',
 } 
 
 #extract it
 exec { 'extract':
   cwd => "/var/www/html/",
   command => "tar -xvzf latest.tar.gz",
   require => File['/var/www/latest.tar.gz'],
   path => ['/bin'],
  }
 
 
   file { '/var/www/html/wordpress/wp-config.php':
      ensure => 'present',
      content => template('profile/wp-config.php.erb')
   }

}
