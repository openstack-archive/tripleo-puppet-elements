if [ "$DIB_INSTALLTYPE_puppet_modules" = "source" ]; then
  for name in puppet-apache puppet-ceilometer puppet-certmonger puppet-cinder puppet-common puppet-concat puppetlabs-firewall puppet-galera puppet-glance puppet-gluster puppetlabs-haproxy puppet-heat puppet-horizon puppetlabs-inifile puppet-keystone puppet-memcached puppetlabs-mongodb puppetlabs-mysql puppet-neutron puppet-nova puppet-nssdb puppet-openstack puppet-pacemaker puppet-puppet puppet-qpid puppetlabs-rabbitmq puppetlabs-rsync puppet-sahara puppet-ssh puppet-staging puppet-stdlib puppet-swift puppetlabs-sysctl puppet-tempest puppetlabs-vcsrepo puppet-vlan puppet-vswitch puppetlabs-xinetd puppet-openstacklib puppet-module-keepalived puppetlabs-ntp puppet-snmp puppet-tripleo puppet-ironic puppet-openstack_extras puppet_aviator puppetlabs-corosync; do
    export DIB_INSTALLTYPE_${name//\-/_}='source'
  done
fi
