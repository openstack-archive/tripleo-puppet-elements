DIB_DEFAULT_INSTALLTYPE=${DIB_DEFAULT_INSTALLTYPE:-"source"}
DIB_INSTALLTYPE_puppet_modules=${DIB_INSTALLTYPE_puppet_modules:-"$DIB_DEFAULT_INSTALLTYPE"}

if [ "$DIB_INSTALLTYPE_puppet_modules" = "source" ]; then
  for module_name in \
    puppetlabs-apache \
    puppet-aodh \
    puppet-auditd \
    puppet-barbican \
    puppet-cassandra \
    puppet-ceph \
    puppet-ceilometer \
    puppet-gnocchi \
    puppet-certmonger \
    puppet-cinder \
    puppet-common \
    puppet-congress \
    puppet-contrail \
    puppetlabs-concat \
    puppet-datacat \
    puppet-ec2api \
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
    puppetlabs-mysql \
    puppet-neutron \
    puppet-octavia \
    puppet-nova \
    puppet-oslo \
    puppet-nssdb \
    puppet-opendaylight \
    puppet-ovn \
    puppet-panko \
    puppet-puppet \
    puppet-qdr \
    puppetlabs-rabbitmq \
    puppet-redis \
    puppetlabs-rsync \
    puppet-sahara \
    puppet-ssh \
    puppet-staging \
    puppetlabs-stdlib \
    puppet-swift \
    puppet-systemd \
    puppetlabs-sysctl \
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
    puppet-ipaclient \
    puppet-openstack_extras \
    puppet_aviator \
    puppetlabs-corosync \
    puppet-pacemaker \
    puppet-manila \
    puppet-uchiwa \
    sensu-puppet \
    puppet-kmod \
    puppet-etcd \
    puppet-zaqar \
    puppet-veritas_hyperscale \
    puppet-ptp ; do
    export DIB_INSTALLTYPE_${module_name//\-/_}='source'
  done
fi
