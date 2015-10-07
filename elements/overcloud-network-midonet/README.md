MidoNet Element
===============

Install all packages required for an OpenStack deployment with MidoNet.

MidoNet MEM (MidoNet with customer support) can also be installed. To do so,
build the image with the following environment variables:

  * DIB_MIDONET_release=MEM
  * DIB_MIDONET_mem_username=yourcustomerrepousername
  * DIB_MIDONET_mem_password=yourcustomerrepopassword

MidoNet components come from packages, so use the already exposed:

  * export DIB_INSTALLTYPE_overcloud_network_midonet=package

Puppet modules will be downloaded from pinned sources (see `environment.d` and
`source-repository-overcloud-network-midonet` files)
