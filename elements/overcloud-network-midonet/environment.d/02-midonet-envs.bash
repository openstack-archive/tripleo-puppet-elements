export DIB_MIDONET_release=${DIB_MIDONET_release:-"OSS"} # Available values OSS/MEM. To build MidoNet image with support or without it. Open Source version by default
export DIB_MIDONET_mem_username=${DIB_MIDONET_mem_username:-} # Username of the yum repo. Only needed when DIB_MIDONET_version = "MEM"
export DIB_MIDONET_mem_password=${DIB_MIDONET_mem_password:-} # Password of the yum repo. Only needed when DIB_MIDONET_version = "MEM"

# Only source is available now for puppet modules.
export DIB_INSTALLTYPE_ripienar_module_data='source'
export DIB_INSTALLTYPE_puppetlabs_java='source'
export DIB_INSTALLTYPE_puppetlabs_apt='source'
export DIB_INSTALLTYPE_richardc_datacat='source'
export DIB_INSTALLTYPE_deric_zookeeper='source'
export DIB_INSTALLTYPE_nanliu_staging='source'
export DIB_INSTALLTYPE_puppetlabs_tomcat='source'
export DIB_INSTALLTYPE_puppet_midonet='source'
