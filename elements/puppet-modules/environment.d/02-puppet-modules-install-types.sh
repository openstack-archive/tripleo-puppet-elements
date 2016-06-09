DIB_DEFAULT_INSTALLTYPE=${DIB_DEFAULT_INSTALLTYPE:-"source"}
DIB_INSTALLTYPE_puppet_modules=${DIB_INSTALLTYPE_puppet_modules:-"$DIB_DEFAULT_INSTALLTYPE"}

if [ "$DIB_INSTALLTYPE_puppet_modules" = "source" ]; then
  for module_name in \
    puppetlabs-apache \
    puppet-aodh \
    puppet-barbican \
    puppet-cassandra \
    puppet-ceph \
    puppet-ceilometer \
    puppet-gnocchi \
    puppet-cinder \
    puppet-common \
    puppet-contrail \
    puppetlabs-concat \
    puppet-datacat \
    puppet-elasticsearch \
    puppetlabs-firewall \
    konstantin-fluentd \
    puppet-galera \
    puppetlabs-git \
    puppet-glance \
    puppet-gluster \
    puppetlabs-haproxy \
    puppet-heat \
    puppet-healthcheck \
    puppet-horizon \
    puppetlabs-inifile \
    puppet-kafka \
    puppet-keystone \
    puppet-kibana3 \
    puppet-memcached \
    puppet-mistral \
    puppetlabs-mongodb \
    puppetlabs-mysql \
    puppet-neutron \
    puppet-nova \
    puppet-oslo \
    puppet-nssdb \
    puppet-puppet \
    puppetlabs-rabbitmq \
    puppet-redis \
    puppetlabs-rsync \
    puppet-sahara \
    puppet-trove \
    puppet-ssh \
    puppet-staging \
    puppetlabs-stdlib \
    puppet-swift \
    puppetlabs-sysctl \
    puppet-tempest \
    puppet-timezone \
    puppetlabs-vcsrepo \
    puppet-vlan \
    puppet-vswitch \
    puppetlabs-xinetd \
    puppet-zookeeper \
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
    puppet-manila \
    puppet-uchiwa \
    sensu-puppet \
    puppet-kmod \
    puppet-zaqar; do
    export DIB_INSTALLTYPE_${module_name//\-/_}='source'
  done
fi