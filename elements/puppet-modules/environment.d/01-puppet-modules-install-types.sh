DIB_INSTALLTYPE_puppet_modules=${DIB_INSTALLTYPE_puppet_modules:-"source"}

if [ "$DIB_INSTALLTYPE_puppet_modules" = "source" ]; then
  for module_name in \
    puppetlabs-apache \
    puppet-ceph \
    puppet-ceilometer \
    puppet-certmonger \
    puppet-cinder \
    puppet-common \
    puppetlabs-concat \
    puppetlabs-firewall \
    puppet-galera \
    puppet-glance \
    puppet-gluster \
    puppetlabs-haproxy \
    puppet-heat \
    puppet-healthcheck \
    puppet-horizon \
    puppetlabs-inifile \
    puppet-keystone \
    puppet-memcached \
    puppetlabs-mongodb \
    puppetlabs-mysql \
    puppet-neutron \
    puppet-nova \
    puppet-nssdb \
    puppet-puppet \
    puppet-qpid \
    puppetlabs-rabbitmq \
    puppet-redis \
    puppetlabs-rsync \
    puppet-sahara \
    puppet-ssh \
    puppet-staging \
    puppetlabs-stdlib \
    puppet-swift \
    puppetlabs-sysctl \
    puppet-tempest \
    puppetlabs-vcsrepo \
    puppet-vlan \
    puppet-vswitch \
    puppetlabs-xinetd \
    puppet-openstacklib \
    puppet-module-keepalived \
    puppetlabs-ntp \
    puppet-snmp \
    puppet-tripleo \
    puppet-ironic \
    puppet-openstack_extras \
    puppet_aviator \
    puppetlabs-corosync \
    puppet-pacemaker \
    puppet-tuskar; do
    export DIB_INSTALLTYPE_${module_name//\-/_}='source'
  done
fi
