# Build midonet image with OSS or enterprise repository
# Possible values: OSS, MEM
export DIB_MIDONET_release=${DIB_MIDONET_release:-"OSS"}

# Whether the stable version should be installed or not
# Possible values: stable, testing, unstable
export DIB_MIDONET_stage=${DIB_MIDONET_stage:-"stable"}

# Midonet version that we want to install
export DIB_MIDONET_version=${DIB_MIDONET_version:-"5.2"}

# OpenStack version of the midonet neutron plugin
export DIB_MIDONET_openstack_version=${DIB_MIDONET_openstack_version:-"mitaka"}

# Username of the yum repo (only applicable when DIB_MIDONET_release is MEM)
export DIB_MIDONET_mem_username=${DIB_MIDONET_mem_username:-}

# Password of the yum repo (only applicable when DIB_MIDONET_release is MEM)
export DIB_MIDONET_mem_password=${DIB_MIDONET_mem_password:-}

# Only download source for Puppet modules
#export DIB_INSTALLTYPE_puppet_modules="source"

export DIB_INSTALLTYPE_puppet_midonet="source"
export DIB_INSTALLTYPE_puppetlabs_inifile="source"
export DIB_INSTALLTYPE_puppetlabs_apt="source"
export DIB_INSTALLTYPE_puppetlabs_java="source"
export DIB_INSTALLTYPE_puppetlabs_stdlib="source"
export DIB_INSTALLTYPE_puppetlabs_apache="source"
export DIB_INSTALLTYPE_puppetlabs_concat="source"
export DIB_INSTALLTYPE_zookeeper="source"
export DIB_INSTALLTYPE_cassandra="source"
export DIB_INSTALLTYPE_puppet_curator="source"
export DIB_INSTALLTYPE_puppet_elasticsearch="source"
export DIB_INSTALLTYPE_puppet_logstash="source"
export DIB_INSTALLTYPE_puppet_lib_file_concat="source"
export DIB_INSTALLTYPE_puppet_datacat="source"
export DIB_INSTALLTYPE_puppet_midonet_openstack="source"

# Elasticsearch & logstash
export DIB_MIDONET_logstash_version="1.5"
export DIB_MIDONET_elasticsearch_version="1.7"
