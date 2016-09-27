MidoNet Element
===============

Install all packages required for an OpenStack deployment with MidoNet.

MidoNet MEM (MidoNet with customer support) can also be installed. To do so,
build the image with the following environment variables:

## Variables

### DIB\_MIDONET\_release

Whether to install the open source or the enterprise version. Available values
are `OSS` and `MEM`. Default is `OSS`.

If `MEM` is the selected option, you must specify these variables too:

  * `DIB_MIDONET_mem_username`
  * `DIB_MIDONET_mem_password`

### DIB\_MIDONET\_stage

Install `stable`, `testing` or `unstable` packages. Default is `stable`.

### DIB\_MIDONET\_version

What version of Midonet to install. Default is `5.2`.

### DIB\_MIDONET\_openstack\_version

Specify the version of OpenStack you're using. Default is `mitaka`.

### DIB\_MIDONET\_mem\_username

Username to be used against the MEM repository. Must be provided when setting
`DIB_MIDONET_release` to `MEM`.

### DIB\_MIDONET\_mem\_password

Password to be used against the MEM repository. Must be provided when setting
`DIB_MIDONET_release` to `MEM`.

## Considerations

MidoNet components come from packages, so use the already exposed:

  * `export DIB_INSTALLTYPE_overcloud_network_midonet=package`

Puppet modules will be downloaded from pinned sources (see files in
`environment.d` and `source-repository-overcloud-network-midonet` folders).
