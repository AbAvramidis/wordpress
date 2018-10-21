node 'agent.local' {
  #if $::role {
   #include "role::${::role}"
   # notify { "${::fqdn} has a role": }
  #} else {
  #  include profile::base
#    notify { "My node with ${::fqdn} has no role set": }
 # }
 include role::default
}

node 'agent2.local' {
  include role::ver

}

node 'master.local' {

include role::default

}


lookup('classes', Array[String], 'unique').include
