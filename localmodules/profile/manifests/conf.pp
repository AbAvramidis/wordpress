class profile::conf {

  selboolean { 'httpd_can_network_connect_db':
    persistent => true,
    value => on,
  }

  
  group { 'wordpress': ensure => 'present', }

  user { 'wordpress': ensure => 'present',
     password => 'password',
     home => '/var/www/html/wordpress',
     gid => 'wordpress',
  }
  
 # class { '::mysql::server':
  #  root_password => $root_password,

  #}

  include mysql::client

  class { '::mysql::bindings':
   php_enable => true,
  }

   
  class { 'wordpress':
    install_dir => '/var/www/html/wordpress',
    db_name => 'wordpress',
    db_host => '173.194.108.121',
    db_user => 'wordpress',
    db_password => 'password',
  }


}
