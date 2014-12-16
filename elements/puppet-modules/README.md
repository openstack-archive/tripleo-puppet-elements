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
None. The modules are automatically linked into /etc/puppet/modules.
