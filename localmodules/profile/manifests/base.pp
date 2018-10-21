#etc/puppetlabs/code/modules/profile/manifests/base.pp
class profile::base {
 
# class { 'selinux':
 #   mode => 'disabled',
 # }
 package { 'curl':
   ensure => 'present',
 }

 package { 'git':
  ensure => 'installed',
  provider => 'yum',
 }

 package { 'links':
   ensure => 'present',
   provider => 'yum',
 }

 package { 'wget':
   ensure => 'installed',
   provider => 'yum',
 }

 package { 'epel-release':
  ensure => 'present',
  provider => 'yum',
 }
 
 package { 'nano':
  ensure => 'present',
  provider => 'yum',
 }
 
}
