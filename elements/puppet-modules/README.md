Installs the full set of puppet modules required to configure
an OpenStack installation.

Supports packages (all-in-one) or source-repository based
installation of modules via Git.

To use packages:

 export DIB\_INSTALLTYPE\_puppet\_modules=packages

To use git:

 export DIB\_INSTALLTYPE\_puppet\_modules=source

Configuration
-------------
The modules are automatically linked into /etc/puppet/modules.

When installing from source, you can specify a specific branch or tag to use
by exporting DIB_REPOREF_<module namespace>_<module name>=<git reference>. 

For example:

 export DIB\_REPOREF\_puppetlabs\_ntp=4.2.x

