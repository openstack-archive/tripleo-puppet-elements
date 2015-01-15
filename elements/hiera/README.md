Configure Hiera for use w/ Puppet and Heat metadata.

Configuration
-------------

    hiera:
      hierarchy: []
        - The order to load datafiles. This is configured in hiera.yaml.

      datafiles: {}
          Data files is a hash of filename -> {data/mappings} to inject
          into each named hiera datafile. There are three types:

        raw_data: contains static raw data to inject directly into this hiera
          datafile. Can be an inline string or imported via get_file in a
          Heat template.

        mapped_data: Name value pairs that will be injected into the
          hiera data file. Hiera name on the left, Hiera value on the right.

        oac_data: A hash of puppet -> OAC (os-apply-config) named key value
          pairs. Arbitrary os-apply-config data can be mapped to Hiera keys
          using this data. Hiera name on the left. The Hiera value is generated
          at os-refresh-config time via os-apply-config lookup of the value.

Example:
--------

    HieraConfig:
      type: OS::Heat::StructuredConfig
      properties:
        group: os-apply-config
        config:
          hiera:
            hierarchy:
              - heat_config_%{::deploy_config_name}
              - controller
              - common
            datafiles:
              controller:
                raw_data: {get_file: puppet/hieradata/controller.yaml}
                oac_data:
                  bootstrap_nodeid: bootstrap_host.bootstrap_nodeid
              common:
                data: {get_file: puppet/hieradata/common.yaml}

    HieraDeployment:
      type: OS::Heat::StructuredDeployment
      properties:
        server: {get_resource: MyServer}
        config: {get_resource: HieraConfig}
        signal_transport: NO_SIGNAL

In this example the 'hierarchy' config section controls the ordering of the
hiera files within hiera.yaml. The 'datafiles' config section controls the
actual hiera data files which gets injected into the node.

NOTE:
This example makes use of a special heat\_config\_%{::deploy\_config\_name}
heira datafile which gets generated via the heat-config-puppet element when
enable\_hiera is set to True. Since this file is injected automatically
we don't specify it in 'datafiles' but we do have it listed in the 'hierarchy'.
A FACTER\_ variable is used to provide access to the ::deploy\_config\_name
variable which is automatically set via the heat-config-puppet element when
puppet apply is executed.
