#etc/puppetlabs/code/modules/profile/manifests/apache.pp

class profile::apache {

 class { 'apache': 
    default_mods => true,
    purge_configs => false,
 }

# apache::vhost { 'wordpress':
#   port => '80',
#   serveradmin => 'root@localhost',
#   docroot => '/var/www/wordpress',
#   docroot_owner => 'apache',
#   docroot_group => 'apache',
# }
 
}
