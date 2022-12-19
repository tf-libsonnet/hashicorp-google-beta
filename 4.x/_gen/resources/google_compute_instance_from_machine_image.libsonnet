local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_instance_from_machine_image', url='', help='`google_compute_instance_from_machine_image` represents the `google-beta_google_compute_instance_from_machine_image` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  advanced_machine_features:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_nested_virtualization` (`bool`): Whether to enable nested virtualization or not. When `null`, the `enable_nested_virtualization` field will be omitted from the resulting object.\n  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. When `null`, the `threads_per_core` field will be omitted from the resulting object.\n  - `visible_core_count` (`number`): The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\\&#39;s nominal CPU count and the underlying platform\\&#39;s SMT width. When `null`, the `visible_core_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `advanced_machine_features` sub block.\n', args=[]),
    new(
      enable_nested_virtualization=null,
      threads_per_core=null,
      visible_core_count=null
    ):: std.prune(a={
      enable_nested_virtualization: enable_nested_virtualization,
      threads_per_core: threads_per_core,
      visible_core_count: visible_core_count,
    }),
  },
  confidential_instance_config:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.confidential_instance_config.new` constructs a new object with attributes and blocks configured for the `confidential_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_confidential_compute` (`bool`): Defines whether the instance should have confidential compute enabled.\n\n**Returns**:\n  - An attribute object that represents the `confidential_instance_config` sub block.\n', args=[]),
    new(
      enable_confidential_compute
    ):: std.prune(a={
      enable_confidential_compute: enable_confidential_compute,
    }),
  },
  network_interface:: {
    ipv6_access_config:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.network_interface.ipv6_access_config.new` constructs a new object with attributes and blocks configured for the `ipv6_access_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network_tier` (`string`): The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6\n  - `public_ptr_domain_name` (`string`): The domain name to be used when creating DNSv6 records for the external IPv6 ranges. When `null`, the `public_ptr_domain_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ipv6_access_config` sub block.\n', args=[]),
      new(
        network_tier,
        public_ptr_domain_name=null
      ):: std.prune(a={
        network_tier: network_tier,
        public_ptr_domain_name: public_ptr_domain_name,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.network_interface.new` constructs a new object with attributes and blocks configured for the `network_interface`\nTerraform sub block.\n\n\n\n**Args**:\n  - `access_config` (`list`): Access configurations, i.e. IPs via which this instance can be accessed via the Internet. When `null`, the `access_config` field will be omitted from the resulting object.\n  - `alias_ip_range` (`list`): An array of alias IP ranges for this network interface. When `null`, the `alias_ip_range` field will be omitted from the resulting object.\n  - `network` (`string`): The name or self_link of the network attached to this interface. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_ip` (`string`): The private IP address assigned to the instance. When `null`, the `network_ip` field will be omitted from the resulting object.\n  - `nic_type` (`string`): The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET When `null`, the `nic_type` field will be omitted from the resulting object.\n  - `queue_count` (`number`): The networking queue count that&#39;s specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified. When `null`, the `queue_count` field will be omitted from the resulting object.\n  - `stack_type` (`string`): The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. When `null`, the `stack_type` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The name or self_link of the subnetwork attached to this interface. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `subnetwork_project` (`string`): The project in which the subnetwork belongs. When `null`, the `subnetwork_project` field will be omitted from the resulting object.\n  - `ipv6_access_config` (`list[obj]`): An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access. When `null`, the `ipv6_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.network_interface.ipv6_access_config.new](#fn-ipv6_access_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `network_interface` sub block.\n', args=[]),
    new(
      access_config=null,
      alias_ip_range=null,
      ipv6_access_config=null,
      network=null,
      network_ip=null,
      nic_type=null,
      queue_count=null,
      stack_type=null,
      subnetwork=null,
      subnetwork_project=null
    ):: std.prune(a={
      access_config: access_config,
      alias_ip_range: alias_ip_range,
      ipv6_access_config: ipv6_access_config,
      network: network,
      network_ip: network_ip,
      nic_type: nic_type,
      queue_count: queue_count,
      stack_type: stack_type,
      subnetwork: subnetwork,
      subnetwork_project: subnetwork_project,
    }),
  },
  network_performance_config:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.network_performance_config.new` constructs a new object with attributes and blocks configured for the `network_performance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `total_egress_bandwidth_tier` (`string`): The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT\n\n**Returns**:\n  - An attribute object that represents the `network_performance_config` sub block.\n', args=[]),
    new(
      total_egress_bandwidth_tier
    ):: std.prune(a={
      total_egress_bandwidth_tier: total_egress_bandwidth_tier,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_compute_instance_from_machine_image.new` injects a new `google-beta_google_compute_instance_from_machine_image` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_instance_from_machine_image.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_instance_from_machine_image` using the reference:\n\n    $._ref.google-beta_google_compute_instance_from_machine_image.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_instance_from_machine_image.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `allow_stopping_for_update` (`bool`): If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail. When `null`, the `allow_stopping_for_update` field will be omitted from the resulting object.\n  - `can_ip_forward` (`bool`): Whether sending and receiving of packets with non-matching source or destination IPs is allowed. When `null`, the `can_ip_forward` field will be omitted from the resulting object.\n  - `deletion_protection` (`bool`): Whether deletion protection is enabled on this instance. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `description` (`string`): A brief description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `desired_status` (`string`): Desired status of the instance. Either \u0026#34;RUNNING\u0026#34; or \u0026#34;TERMINATED\u0026#34;. When `null`, the `desired_status` field will be omitted from the resulting object.\n  - `enable_display` (`bool`): Whether the instance has virtual displays enabled. When `null`, the `enable_display` field will be omitted from the resulting object.\n  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.\n  - `hostname` (`string`): A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created. When `null`, the `hostname` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs assigned to the instance. When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to create. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `metadata` (`obj`): Metadata key/value pairs made available within the instance. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `metadata_startup_script` (`string`): Metadata startup scripts made available within the instance. When `null`, the `metadata_startup_script` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): The minimum CPU platform specified for the VM instance. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance. One of name or self_link must be provided.\n  - `project` (`string`): The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `resource_policies` (`list`): A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. When `null`, the `resource_policies` field will be omitted from the resulting object.\n  - `service_account` (`list`): The service account to attach to the instance. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `source_machine_image` (`string`): Name or self link of a machine image to create the instance from on.\n  - `tags` (`list`): The list of tags attached to the instance. When `null`, the `tags` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n  - `advanced_machine_features` (`list[obj]`): Controls for advanced machine-related behavior features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.advanced_machine_features.new](#fn-advanced_machine_featuresnew) constructor.\n  - `confidential_instance_config` (`list[obj]`): The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.confidential_instance_config.new](#fn-confidential_instance_confignew) constructor.\n  - `network_interface` (`list[obj]`): The networks attached to the instance. When `null`, the `network_interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.network_interface.new](#fn-network_interfacenew) constructor.\n  - `network_performance_config` (`list[obj]`): Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. When `null`, the `network_performance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.network_performance_config.new](#fn-network_performance_confignew) constructor.\n  - `reservation_affinity` (`list[obj]`): Specifies the reservations that this instance can consume from. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.reservation_affinity.new](#fn-reservation_affinitynew) constructor.\n  - `scheduling` (`list[obj]`): The scheduling strategy being used by the instance. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.scheduling.new](#fn-schedulingnew) constructor.\n  - `shielded_instance_config` (`list[obj]`): The shielded vm config being used by the instance. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    source_machine_image,
    advanced_machine_features=null,
    allow_stopping_for_update=null,
    can_ip_forward=null,
    confidential_instance_config=null,
    deletion_protection=null,
    description=null,
    desired_status=null,
    enable_display=null,
    guest_accelerator=null,
    hostname=null,
    labels=null,
    machine_type=null,
    metadata=null,
    metadata_startup_script=null,
    min_cpu_platform=null,
    network_interface=null,
    network_performance_config=null,
    project=null,
    reservation_affinity=null,
    resource_policies=null,
    scheduling=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_from_machine_image',
    label=resourceLabel,
    attrs=self.newAttrs(
      advanced_machine_features=advanced_machine_features,
      allow_stopping_for_update=allow_stopping_for_update,
      can_ip_forward=can_ip_forward,
      confidential_instance_config=confidential_instance_config,
      deletion_protection=deletion_protection,
      description=description,
      desired_status=desired_status,
      enable_display=enable_display,
      guest_accelerator=guest_accelerator,
      hostname=hostname,
      labels=labels,
      machine_type=machine_type,
      metadata=metadata,
      metadata_startup_script=metadata_startup_script,
      min_cpu_platform=min_cpu_platform,
      name=name,
      network_interface=network_interface,
      network_performance_config=network_performance_config,
      project=project,
      reservation_affinity=reservation_affinity,
      resource_policies=resource_policies,
      scheduling=scheduling,
      service_account=service_account,
      shielded_instance_config=shielded_instance_config,
      source_machine_image=source_machine_image,
      tags=tags,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_instance_from_machine_image`\nTerraform resource.\n\nUnlike [google-beta.google_compute_instance_from_machine_image.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `allow_stopping_for_update` (`bool`): If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail. When `null`, the `allow_stopping_for_update` field will be omitted from the resulting object.\n  - `can_ip_forward` (`bool`): Whether sending and receiving of packets with non-matching source or destination IPs is allowed. When `null`, the `can_ip_forward` field will be omitted from the resulting object.\n  - `deletion_protection` (`bool`): Whether deletion protection is enabled on this instance. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `description` (`string`): A brief description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `desired_status` (`string`): Desired status of the instance. Either &#34;RUNNING&#34; or &#34;TERMINATED&#34;. When `null`, the `desired_status` field will be omitted from the resulting object.\n  - `enable_display` (`bool`): Whether the instance has virtual displays enabled. When `null`, the `enable_display` field will be omitted from the resulting object.\n  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.\n  - `hostname` (`string`): A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created. When `null`, the `hostname` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs assigned to the instance. When `null`, the `labels` field will be omitted from the resulting object.\n  - `machine_type` (`string`): The machine type to create. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `metadata` (`obj`): Metadata key/value pairs made available within the instance. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `metadata_startup_script` (`string`): Metadata startup scripts made available within the instance. When `null`, the `metadata_startup_script` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): The minimum CPU platform specified for the VM instance. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance. One of name or self_link must be provided.\n  - `project` (`string`): The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `resource_policies` (`list`): A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. When `null`, the `resource_policies` field will be omitted from the resulting object.\n  - `service_account` (`list`): The service account to attach to the instance. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `source_machine_image` (`string`): Name or self link of a machine image to create the instance from on.\n  - `tags` (`list`): The list of tags attached to the instance. When `null`, the `tags` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.\n  - `advanced_machine_features` (`list[obj]`): Controls for advanced machine-related behavior features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.advanced_machine_features.new](#fn-advanced_machine_featuresnew) constructor.\n  - `confidential_instance_config` (`list[obj]`): The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.confidential_instance_config.new](#fn-confidential_instance_confignew) constructor.\n  - `network_interface` (`list[obj]`): The networks attached to the instance. When `null`, the `network_interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.network_interface.new](#fn-network_interfacenew) constructor.\n  - `network_performance_config` (`list[obj]`): Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. When `null`, the `network_performance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.network_performance_config.new](#fn-network_performance_confignew) constructor.\n  - `reservation_affinity` (`list[obj]`): Specifies the reservations that this instance can consume from. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.reservation_affinity.new](#fn-reservation_affinitynew) constructor.\n  - `scheduling` (`list[obj]`): The scheduling strategy being used by the instance. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.scheduling.new](#fn-schedulingnew) constructor.\n  - `shielded_instance_config` (`list[obj]`): The shielded vm config being used by the instance. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_instance_from_machine_image` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    source_machine_image,
    advanced_machine_features=null,
    allow_stopping_for_update=null,
    can_ip_forward=null,
    confidential_instance_config=null,
    deletion_protection=null,
    description=null,
    desired_status=null,
    enable_display=null,
    guest_accelerator=null,
    hostname=null,
    labels=null,
    machine_type=null,
    metadata=null,
    metadata_startup_script=null,
    min_cpu_platform=null,
    network_interface=null,
    network_performance_config=null,
    project=null,
    reservation_affinity=null,
    resource_policies=null,
    scheduling=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    advanced_machine_features: advanced_machine_features,
    allow_stopping_for_update: allow_stopping_for_update,
    can_ip_forward: can_ip_forward,
    confidential_instance_config: confidential_instance_config,
    deletion_protection: deletion_protection,
    description: description,
    desired_status: desired_status,
    enable_display: enable_display,
    guest_accelerator: guest_accelerator,
    hostname: hostname,
    labels: labels,
    machine_type: machine_type,
    metadata: metadata,
    metadata_startup_script: metadata_startup_script,
    min_cpu_platform: min_cpu_platform,
    name: name,
    network_interface: network_interface,
    network_performance_config: network_performance_config,
    project: project,
    reservation_affinity: reservation_affinity,
    resource_policies: resource_policies,
    scheduling: scheduling,
    service_account: service_account,
    shielded_instance_config: shielded_instance_config,
    source_machine_image: source_machine_image,
    tags: tags,
    timeouts: timeouts,
    zone: zone,
  }),
  reservation_affinity:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `type` (`string`): The type of reservation from which this instance can consume resources.\n  - `specific_reservation` (`list[obj]`): Specifies the label selector for the reservation to use. When `null`, the `specific_reservation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.reservation_affinity.specific_reservation.new](#fn-specific_reservationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `reservation_affinity` sub block.\n', args=[]),
    new(
      type,
      specific_reservation=null
    ):: std.prune(a={
      specific_reservation: specific_reservation,
      type: type,
    }),
    specific_reservation:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.reservation_affinity.specific_reservation.new` constructs a new object with attributes and blocks configured for the `specific_reservation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value.\n  - `values` (`list`): Corresponds to the label values of a reservation resource.\n\n**Returns**:\n  - An attribute object that represents the `specific_reservation` sub block.\n', args=[]),
      new(
        key,
        values
      ):: std.prune(a={
        key: key,
        values: values,
      }),
    },
  },
  scheduling:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.scheduling.new` constructs a new object with attributes and blocks configured for the `scheduling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `automatic_restart` (`bool`): Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user). When `null`, the `automatic_restart` field will be omitted from the resulting object.\n  - `instance_termination_action` (`string`): Specifies the action GCE should take when SPOT VM is preempted. When `null`, the `instance_termination_action` field will be omitted from the resulting object.\n  - `min_node_cpus` (`number`):  When `null`, the `min_node_cpus` field will be omitted from the resulting object.\n  - `on_host_maintenance` (`string`): Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE, When `null`, the `on_host_maintenance` field will be omitted from the resulting object.\n  - `preemptible` (`bool`): Whether the instance is preemptible. When `null`, the `preemptible` field will be omitted from the resulting object.\n  - `provisioning_model` (`string`): Whether the instance is spot. If this is set as SPOT. When `null`, the `provisioning_model` field will be omitted from the resulting object.\n  - `node_affinities` (`list[obj]`): Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems. When `null`, the `node_affinities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_from_machine_image.scheduling.node_affinities.new](#fn-node_affinitiesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `scheduling` sub block.\n', args=[]),
    new(
      automatic_restart=null,
      instance_termination_action=null,
      min_node_cpus=null,
      node_affinities=null,
      on_host_maintenance=null,
      preemptible=null,
      provisioning_model=null
    ):: std.prune(a={
      automatic_restart: automatic_restart,
      instance_termination_action: instance_termination_action,
      min_node_cpus: min_node_cpus,
      node_affinities: node_affinities,
      on_host_maintenance: on_host_maintenance,
      preemptible: preemptible,
      provisioning_model: provisioning_model,
    }),
    node_affinities:: {
      '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.scheduling.node_affinities.new` constructs a new object with attributes and blocks configured for the `node_affinities`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): \n  - `operator` (`string`): \n  - `values` (`list`): \n\n**Returns**:\n  - An attribute object that represents the `node_affinities` sub block.\n', args=[]),
      new(
        key,
        operator,
        values
      ):: std.prune(a={
        key: key,
        operator: operator,
        values: values,
      }),
    },
  },
  shielded_instance_config:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Whether integrity monitoring is enabled for the instance. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Whether secure boot is enabled for the instance. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n  - `enable_vtpm` (`bool`): Whether the instance uses vTPM. When `null`, the `enable_vtpm` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
    new(
      enable_integrity_monitoring=null,
      enable_secure_boot=null,
      enable_vtpm=null
    ):: std.prune(a={
      enable_integrity_monitoring: enable_integrity_monitoring,
      enable_secure_boot: enable_secure_boot,
      enable_vtpm: enable_vtpm,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_from_machine_image.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withAdvancedMachineFeatures':: d.fn(help='`google-beta.list[obj].withAdvancedMachineFeatures` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_machine_features field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withAdvancedMachineFeaturesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_machine_features` field.\n', args=[]),
  withAdvancedMachineFeatures(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          advanced_machine_features: value,
        },
      },
    },
  },
  '#withAdvancedMachineFeaturesMixin':: d.fn(help='`google-beta.list[obj].withAdvancedMachineFeaturesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_machine_features field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAdvancedMachineFeatures](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_machine_features` field.\n', args=[]),
  withAdvancedMachineFeaturesMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          advanced_machine_features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAllowStoppingForUpdate':: d.fn(help='`google-beta.bool.withAllowStoppingForUpdate` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the allow_stopping_for_update field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `allow_stopping_for_update` field.\n', args=[]),
  withAllowStoppingForUpdate(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          allow_stopping_for_update: value,
        },
      },
    },
  },
  '#withCanIpForward':: d.fn(help='`google-beta.bool.withCanIpForward` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the can_ip_forward field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `can_ip_forward` field.\n', args=[]),
  withCanIpForward(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          can_ip_forward: value,
        },
      },
    },
  },
  '#withConfidentialInstanceConfig':: d.fn(help='`google-beta.list[obj].withConfidentialInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the confidential_instance_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withConfidentialInstanceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `confidential_instance_config` field.\n', args=[]),
  withConfidentialInstanceConfig(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          confidential_instance_config: value,
        },
      },
    },
  },
  '#withConfidentialInstanceConfigMixin':: d.fn(help='`google-beta.list[obj].withConfidentialInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the confidential_instance_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withConfidentialInstanceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `confidential_instance_config` field.\n', args=[]),
  withConfidentialInstanceConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          confidential_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeletionProtection':: d.fn(help='`google-beta.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the deletion_protection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `deletion_protection` field.\n', args=[]),
  withDeletionProtection(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDesiredStatus':: d.fn(help='`google-beta.string.withDesiredStatus` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the desired_status field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `desired_status` field.\n', args=[]),
  withDesiredStatus(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          desired_status: value,
        },
      },
    },
  },
  '#withEnableDisplay':: d.fn(help='`google-beta.bool.withEnableDisplay` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_display field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_display` field.\n', args=[]),
  withEnableDisplay(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          enable_display: value,
        },
      },
    },
  },
  '#withGuestAccelerator':: d.fn(help='`google-beta.list.withGuestAccelerator` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the guest_accelerator field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `guest_accelerator` field.\n', args=[]),
  withGuestAccelerator(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          guest_accelerator: value,
        },
      },
    },
  },
  '#withHostname':: d.fn(help='`google-beta.string.withHostname` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hostname field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hostname` field.\n', args=[]),
  withHostname(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          hostname: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMachineType':: d.fn(help='`google-beta.string.withMachineType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the machine_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `machine_type` field.\n', args=[]),
  withMachineType(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google-beta.obj.withMetadata` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the metadata field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withMetadataStartupScript':: d.fn(help='`google-beta.string.withMetadataStartupScript` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the metadata_startup_script field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `metadata_startup_script` field.\n', args=[]),
  withMetadataStartupScript(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          metadata_startup_script: value,
        },
      },
    },
  },
  '#withMinCpuPlatform':: d.fn(help='`google-beta.string.withMinCpuPlatform` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the min_cpu_platform field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `min_cpu_platform` field.\n', args=[]),
  withMinCpuPlatform(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          min_cpu_platform: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworkInterface':: d.fn(help='`google-beta.list[obj].withNetworkInterface` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_interface field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withNetworkInterfaceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_interface` field.\n', args=[]),
  withNetworkInterface(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          network_interface: value,
        },
      },
    },
  },
  '#withNetworkInterfaceMixin':: d.fn(help='`google-beta.list[obj].withNetworkInterfaceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_interface field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworkInterface](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_interface` field.\n', args=[]),
  withNetworkInterfaceMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          network_interface+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNetworkPerformanceConfig':: d.fn(help='`google-beta.list[obj].withNetworkPerformanceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_performance_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withNetworkPerformanceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_performance_config` field.\n', args=[]),
  withNetworkPerformanceConfig(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          network_performance_config: value,
        },
      },
    },
  },
  '#withNetworkPerformanceConfigMixin':: d.fn(help='`google-beta.list[obj].withNetworkPerformanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_performance_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworkPerformanceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_performance_config` field.\n', args=[]),
  withNetworkPerformanceConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          network_performance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReservationAffinity':: d.fn(help='`google-beta.list[obj].withReservationAffinity` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the reservation_affinity field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withReservationAffinityMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `reservation_affinity` field.\n', args=[]),
  withReservationAffinity(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          reservation_affinity: value,
        },
      },
    },
  },
  '#withReservationAffinityMixin':: d.fn(help='`google-beta.list[obj].withReservationAffinityMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the reservation_affinity field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withReservationAffinity](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `reservation_affinity` field.\n', args=[]),
  withReservationAffinityMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          reservation_affinity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withResourcePolicies':: d.fn(help='`google-beta.list.withResourcePolicies` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the resource_policies field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `resource_policies` field.\n', args=[]),
  withResourcePolicies(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          resource_policies: value,
        },
      },
    },
  },
  '#withScheduling':: d.fn(help='`google-beta.list[obj].withScheduling` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withSchedulingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling` field.\n', args=[]),
  withScheduling(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          scheduling: value,
        },
      },
    },
  },
  '#withSchedulingMixin':: d.fn(help='`google-beta.list[obj].withSchedulingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scheduling field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withScheduling](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scheduling` field.\n', args=[]),
  withSchedulingMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          scheduling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google-beta.list.withServiceAccount` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withShieldedInstanceConfig':: d.fn(help='`google-beta.list[obj].withShieldedInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the shielded_instance_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withShieldedInstanceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.\n', args=[]),
  withShieldedInstanceConfig(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          shielded_instance_config: value,
        },
      },
    },
  },
  '#withShieldedInstanceConfigMixin':: d.fn(help='`google-beta.list[obj].withShieldedInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the shielded_instance_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withShieldedInstanceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.\n', args=[]),
  withShieldedInstanceConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          shielded_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSourceMachineImage':: d.fn(help='`google-beta.string.withSourceMachineImage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the source_machine_image field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `source_machine_image` field.\n', args=[]),
  withSourceMachineImage(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          source_machine_image: value,
        },
      },
    },
  },
  '#withTags':: d.fn(help='`google-beta.list.withTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `tags` field.\n', args=[]),
  withTags(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google-beta.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
