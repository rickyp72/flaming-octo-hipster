# sudo puppet apply /home/ricky/.puppet/modules/openldap/tests/init.pp --modulepath="/home/ricky/.puppet/modules/" --debug

# class { 'openldap::server':
# }
include openldap

openldap::server::database { 'dc=example,dc=com':
  directory => '/var/lib/ldap',
  rootdn    => 'cn=admin,dc=example,dc=com',
  rootpw    => openldap_password('mySuperSecretPassword'),

}