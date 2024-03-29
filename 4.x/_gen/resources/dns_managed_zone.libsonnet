local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dns_managed_zone', url='', help='`google_dns_managed_zone` represents the `google-beta_google_dns_managed_zone` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  cloud_logging_config:: {
    '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.cloud_logging_config.new` constructs a new object with attributes and blocks configured for the `cloud_logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_logging` (`bool`): If set, enable query logging for this ManagedZone. False by default, making logging opt-in.\n\n**Returns**:\n  - An attribute object that represents the `cloud_logging_config` sub block.\n', args=[]),
    new(
      enable_logging
    ):: std.prune(a={
      enable_logging: enable_logging,
    }),
  },
  dnssec_config:: {
    default_key_specs:: {
      '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.dnssec_config.default_key_specs.new` constructs a new object with attributes and blocks configured for the `default_key_specs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `algorithm` (`string`): String mnemonic specifying the DNSSEC algorithm of this key Possible values: [&#34;ecdsap256sha256&#34;, &#34;ecdsap384sha384&#34;, &#34;rsasha1&#34;, &#34;rsasha256&#34;, &#34;rsasha512&#34;] When `null`, the `algorithm` field will be omitted from the resulting object.\n  - `key_length` (`number`): Length of the keys in bits When `null`, the `key_length` field will be omitted from the resulting object.\n  - `key_type` (`string`): Specifies whether this is a key signing key (KSK) or a zone\nsigning key (ZSK). Key signing keys have the Secure Entry\nPoint flag set and, when active, will only be used to sign\nresource record sets of type DNSKEY. Zone signing keys do\nnot have the Secure Entry Point flag set and will be used\nto sign all other types of resource record sets. Possible values: [&#34;keySigning&#34;, &#34;zoneSigning&#34;] When `null`, the `key_type` field will be omitted from the resulting object.\n  - `kind` (`string`): Identifies what kind of resource this is When `null`, the `kind` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `default_key_specs` sub block.\n', args=[]),
      new(
        algorithm=null,
        key_length=null,
        key_type=null,
        kind=null
      ):: std.prune(a={
        algorithm: algorithm,
        key_length: key_length,
        key_type: key_type,
        kind: kind,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.dnssec_config.new` constructs a new object with attributes and blocks configured for the `dnssec_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kind` (`string`): Identifies what kind of resource this is When `null`, the `kind` field will be omitted from the resulting object.\n  - `non_existence` (`string`): Specifies the mechanism used to provide authenticated denial-of-existence responses.\nnon_existence can only be updated when the state is &#39;off&#39;. Possible values: [&#34;nsec&#34;, &#34;nsec3&#34;] When `null`, the `non_existence` field will be omitted from the resulting object.\n  - `state` (`string`): Specifies whether DNSSEC is enabled, and what mode it is in Possible values: [&#34;off&#34;, &#34;on&#34;, &#34;transfer&#34;] When `null`, the `state` field will be omitted from the resulting object.\n  - `default_key_specs` (`list[obj]`): Specifies parameters that will be used for generating initial DnsKeys\nfor this ManagedZone. If you provide a spec for keySigning or zoneSigning,\nyou must also provide one for the other.\ndefault_key_specs can only be updated when the state is &#39;off&#39;. When `null`, the `default_key_specs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.dnssec_config.default_key_specs.new](#fn-dnssec_configdefault_key_specsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dnssec_config` sub block.\n', args=[]),
    new(
      default_key_specs=null,
      kind=null,
      non_existence=null,
      state=null
    ):: std.prune(a={
      default_key_specs: default_key_specs,
      kind: kind,
      non_existence: non_existence,
      state: state,
    }),
  },
  forwarding_config:: {
    '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.forwarding_config.new` constructs a new object with attributes and blocks configured for the `forwarding_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_name_servers` (`list[obj]`): List of target name servers to forward to. Cloud DNS will\nselect the best available name server if more than\none target is given. When `null`, the `target_name_servers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.forwarding_config.target_name_servers.new](#fn-forwarding_configtarget_name_serversnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `forwarding_config` sub block.\n', args=[]),
    new(
      target_name_servers=null
    ):: std.prune(a={
      target_name_servers: target_name_servers,
    }),
    target_name_servers:: {
      '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.forwarding_config.target_name_servers.new` constructs a new object with attributes and blocks configured for the `target_name_servers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `forwarding_path` (`string`): Forwarding path for this TargetNameServer. If unset or &#39;default&#39; Cloud DNS will make forwarding\ndecision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go\nto the Internet. When set to &#39;private&#39;, Cloud DNS will always send queries through VPC for this target Possible values: [&#34;default&#34;, &#34;private&#34;] When `null`, the `forwarding_path` field will be omitted from the resulting object.\n  - `ipv4_address` (`string`): IPv4 address of a target name server.\n\n**Returns**:\n  - An attribute object that represents the `target_name_servers` sub block.\n', args=[]),
      new(
        ipv4_address,
        forwarding_path=null
      ):: std.prune(a={
        forwarding_path: forwarding_path,
        ipv4_address: ipv4_address,
      }),
    },
  },
  '#new':: d.fn(help="\n`google-beta.google_dns_managed_zone.new` injects a new `google-beta_google_dns_managed_zone` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dns_managed_zone.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dns_managed_zone` using the reference:\n\n    $._ref.google-beta_google_dns_managed_zone.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dns_managed_zone.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A textual description field. Defaults to \u0026#39;Managed by Terraform\u0026#39;. When `null`, the `description` field will be omitted from the resulting object.\n  - `dns_name` (`string`): The DNS name of this managed zone, for instance \u0026#34;example.com.\u0026#34;.\n  - `force_destroy` (`bool`): Set this true to delete all records in the zone. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this ManagedZone. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): User assigned name for this resource.\nMust be unique within the project.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `reverse_lookup` (`bool`): Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse\nlookup queries using automatically configured records for VPC resources. This only applies\nto networks listed under \u0026#39;private_visibility_config\u0026#39;. When `null`, the `reverse_lookup` field will be omitted from the resulting object.\n  - `visibility` (`string`): The zone\u0026#39;s visibility: public zones are exposed to the Internet,\nwhile private zones are visible only to Virtual Private Cloud resources. Default value: \u0026#34;public\u0026#34; Possible values: [\u0026#34;private\u0026#34;, \u0026#34;public\u0026#34;] When `null`, the `visibility` field will be omitted from the resulting object.\n  - `cloud_logging_config` (`list[obj]`): Cloud logging configuration When `null`, the `cloud_logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.cloud_logging_config.new](#fn-cloud_logging_confignew) constructor.\n  - `dnssec_config` (`list[obj]`): DNSSEC configuration When `null`, the `dnssec_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.dnssec_config.new](#fn-dnssec_confignew) constructor.\n  - `forwarding_config` (`list[obj]`): The presence for this field indicates that outbound forwarding is enabled\nfor this zone. The value of this field contains the set of destinations\nto forward to. When `null`, the `forwarding_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.forwarding_config.new](#fn-forwarding_confignew) constructor.\n  - `peering_config` (`list[obj]`): The presence of this field indicates that DNS Peering is enabled for this\nzone. The value of this field contains the network to peer with. When `null`, the `peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.peering_config.new](#fn-peering_confignew) constructor.\n  - `private_visibility_config` (`list[obj]`): For privately visible zones, the set of Virtual Private Cloud\nresources that the zone is visible from. At least one of \u0026#39;gke_clusters\u0026#39; or \u0026#39;networks\u0026#39; must be specified. When `null`, the `private_visibility_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.private_visibility_config.new](#fn-private_visibility_confignew) constructor.\n  - `service_directory_config` (`list[obj]`): The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone. When `null`, the `service_directory_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.service_directory_config.new](#fn-service_directory_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dns_name,
    name,
    cloud_logging_config=null,
    description=null,
    dnssec_config=null,
    force_destroy=null,
    forwarding_config=null,
    labels=null,
    peering_config=null,
    private_visibility_config=null,
    project=null,
    reverse_lookup=null,
    service_directory_config=null,
    timeouts=null,
    visibility=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_managed_zone',
    label=resourceLabel,
    attrs=self.newAttrs(
      cloud_logging_config=cloud_logging_config,
      description=description,
      dns_name=dns_name,
      dnssec_config=dnssec_config,
      force_destroy=force_destroy,
      forwarding_config=forwarding_config,
      labels=labels,
      name=name,
      peering_config=peering_config,
      private_visibility_config=private_visibility_config,
      project=project,
      reverse_lookup=reverse_lookup,
      service_directory_config=service_directory_config,
      timeouts=timeouts,
      visibility=visibility
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dns_managed_zone.newAttrs` constructs a new object with attributes and blocks configured for the `google_dns_managed_zone`\nTerraform resource.\n\nUnlike [google-beta.google_dns_managed_zone.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A textual description field. Defaults to &#39;Managed by Terraform&#39;. When `null`, the `description` field will be omitted from the resulting object.\n  - `dns_name` (`string`): The DNS name of this managed zone, for instance &#34;example.com.&#34;.\n  - `force_destroy` (`bool`): Set this true to delete all records in the zone. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this ManagedZone. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): User assigned name for this resource.\nMust be unique within the project.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `reverse_lookup` (`bool`): Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse\nlookup queries using automatically configured records for VPC resources. This only applies\nto networks listed under &#39;private_visibility_config&#39;. When `null`, the `reverse_lookup` field will be omitted from the resulting object.\n  - `visibility` (`string`): The zone&#39;s visibility: public zones are exposed to the Internet,\nwhile private zones are visible only to Virtual Private Cloud resources. Default value: &#34;public&#34; Possible values: [&#34;private&#34;, &#34;public&#34;] When `null`, the `visibility` field will be omitted from the resulting object.\n  - `cloud_logging_config` (`list[obj]`): Cloud logging configuration When `null`, the `cloud_logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.cloud_logging_config.new](#fn-cloud_logging_confignew) constructor.\n  - `dnssec_config` (`list[obj]`): DNSSEC configuration When `null`, the `dnssec_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.dnssec_config.new](#fn-dnssec_confignew) constructor.\n  - `forwarding_config` (`list[obj]`): The presence for this field indicates that outbound forwarding is enabled\nfor this zone. The value of this field contains the set of destinations\nto forward to. When `null`, the `forwarding_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.forwarding_config.new](#fn-forwarding_confignew) constructor.\n  - `peering_config` (`list[obj]`): The presence of this field indicates that DNS Peering is enabled for this\nzone. The value of this field contains the network to peer with. When `null`, the `peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.peering_config.new](#fn-peering_confignew) constructor.\n  - `private_visibility_config` (`list[obj]`): For privately visible zones, the set of Virtual Private Cloud\nresources that the zone is visible from. At least one of &#39;gke_clusters&#39; or &#39;networks&#39; must be specified. When `null`, the `private_visibility_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.private_visibility_config.new](#fn-private_visibility_confignew) constructor.\n  - `service_directory_config` (`list[obj]`): The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone. When `null`, the `service_directory_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.service_directory_config.new](#fn-service_directory_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dns_managed_zone` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dns_name,
    name,
    cloud_logging_config=null,
    description=null,
    dnssec_config=null,
    force_destroy=null,
    forwarding_config=null,
    labels=null,
    peering_config=null,
    private_visibility_config=null,
    project=null,
    reverse_lookup=null,
    service_directory_config=null,
    timeouts=null,
    visibility=null
  ):: std.prune(a={
    cloud_logging_config: cloud_logging_config,
    description: description,
    dns_name: dns_name,
    dnssec_config: dnssec_config,
    force_destroy: force_destroy,
    forwarding_config: forwarding_config,
    labels: labels,
    name: name,
    peering_config: peering_config,
    private_visibility_config: private_visibility_config,
    project: project,
    reverse_lookup: reverse_lookup,
    service_directory_config: service_directory_config,
    timeouts: timeouts,
    visibility: visibility,
  }),
  peering_config:: {
    '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.peering_config.new` constructs a new object with attributes and blocks configured for the `peering_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_network` (`list[obj]`): The network with which to peer. When `null`, the `target_network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.peering_config.target_network.new](#fn-peering_configtarget_networknew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `peering_config` sub block.\n', args=[]),
    new(
      target_network=null
    ):: std.prune(a={
      target_network: target_network,
    }),
    target_network:: {
      '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.peering_config.target_network.new` constructs a new object with attributes and blocks configured for the `target_network`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network_url` (`string`): The id or fully qualified URL of the VPC network to forward queries to.\nThis should be formatted like &#39;projects/{project}/global/networks/{network}&#39; or\n&#39;https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}&#39;\n\n**Returns**:\n  - An attribute object that represents the `target_network` sub block.\n', args=[]),
      new(
        network_url
      ):: std.prune(a={
        network_url: network_url,
      }),
    },
  },
  private_visibility_config:: {
    gke_clusters:: {
      '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.private_visibility_config.gke_clusters.new` constructs a new object with attributes and blocks configured for the `gke_clusters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gke_cluster_name` (`string`): The resource name of the cluster to bind this ManagedZone to.\nThis should be specified in the format like\n&#39;projects/*/locations/*/clusters/*&#39;\n\n**Returns**:\n  - An attribute object that represents the `gke_clusters` sub block.\n', args=[]),
      new(
        gke_cluster_name
      ):: std.prune(a={
        gke_cluster_name: gke_cluster_name,
      }),
    },
    networks:: {
      '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.private_visibility_config.networks.new` constructs a new object with attributes and blocks configured for the `networks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `network_url` (`string`): The id or fully qualified URL of the VPC network to bind to.\nThis should be formatted like &#39;projects/{project}/global/networks/{network}&#39; or\n&#39;https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}&#39;\n\n**Returns**:\n  - An attribute object that represents the `networks` sub block.\n', args=[]),
      new(
        network_url
      ):: std.prune(a={
        network_url: network_url,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.private_visibility_config.new` constructs a new object with attributes and blocks configured for the `private_visibility_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gke_clusters` (`list[obj]`): The list of Google Kubernetes Engine clusters that can see this zone. When `null`, the `gke_clusters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.private_visibility_config.gke_clusters.new](#fn-private_visibility_configgke_clustersnew) constructor.\n  - `networks` (`list[obj]`): The list of VPC networks that can see this zone. Until the provider updates to use the Terraform 0.12 SDK in a future release, you\nmay experience issues with this resource while updating. If you&#39;ve defined a &#39;networks&#39; block and\nadd another &#39;networks&#39; block while keeping the old block, Terraform will see an incorrect diff\nand apply an incorrect update to the resource. If you encounter this issue, remove all &#39;networks&#39;\nblocks in an update and then apply another update adding all of them back simultaneously. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.private_visibility_config.networks.new](#fn-private_visibility_confignetworksnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `private_visibility_config` sub block.\n', args=[]),
    new(
      gke_clusters=null,
      networks=null
    ):: std.prune(a={
      gke_clusters: gke_clusters,
      networks: networks,
    }),
  },
  service_directory_config:: {
    namespace:: {
      '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.service_directory_config.namespace.new` constructs a new object with attributes and blocks configured for the `namespace`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace_url` (`string`): The fully qualified or partial URL of the service directory namespace that should be\nassociated with the zone. This should be formatted like\n&#39;https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace_id}&#39;\nor simply &#39;projects/{project}/locations/{location}/namespaces/{namespace_id}&#39;\nIgnored for &#39;public&#39; visibility zones.\n\n**Returns**:\n  - An attribute object that represents the `namespace` sub block.\n', args=[]),
      new(
        namespace_url
      ):: std.prune(a={
        namespace_url: namespace_url,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.service_directory_config.new` constructs a new object with attributes and blocks configured for the `service_directory_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace` (`list[obj]`): The namespace associated with the zone. When `null`, the `namespace` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dns_managed_zone.service_directory_config.namespace.new](#fn-service_directory_confignamespacenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `service_directory_config` sub block.\n', args=[]),
    new(
      namespace=null
    ):: std.prune(a={
      namespace: namespace,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_dns_managed_zone.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCloudLoggingConfig':: d.fn(help='`google-beta.list[obj].withCloudLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_logging_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withCloudLoggingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_logging_config` field.\n', args=[]),
  withCloudLoggingConfig(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          cloud_logging_config: value,
        },
      },
    },
  },
  '#withCloudLoggingConfigMixin':: d.fn(help='`google-beta.list[obj].withCloudLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cloud_logging_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCloudLoggingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cloud_logging_config` field.\n', args=[]),
  withCloudLoggingConfigMixin(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          cloud_logging_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDnsName':: d.fn(help='`google-beta.string.withDnsName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dns_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dns_name` field.\n', args=[]),
  withDnsName(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          dns_name: value,
        },
      },
    },
  },
  '#withDnssecConfig':: d.fn(help='`google-beta.list[obj].withDnssecConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dnssec_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withDnssecConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dnssec_config` field.\n', args=[]),
  withDnssecConfig(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          dnssec_config: value,
        },
      },
    },
  },
  '#withDnssecConfigMixin':: d.fn(help='`google-beta.list[obj].withDnssecConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dnssec_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDnssecConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dnssec_config` field.\n', args=[]),
  withDnssecConfigMixin(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          dnssec_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withForceDestroy':: d.fn(help='`google-beta.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_destroy` field.\n', args=[]),
  withForceDestroy(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  '#withForwardingConfig':: d.fn(help='`google-beta.list[obj].withForwardingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the forwarding_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withForwardingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `forwarding_config` field.\n', args=[]),
  withForwardingConfig(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          forwarding_config: value,
        },
      },
    },
  },
  '#withForwardingConfigMixin':: d.fn(help='`google-beta.list[obj].withForwardingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the forwarding_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withForwardingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `forwarding_config` field.\n', args=[]),
  withForwardingConfigMixin(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          forwarding_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPeeringConfig':: d.fn(help='`google-beta.list[obj].withPeeringConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the peering_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withPeeringConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `peering_config` field.\n', args=[]),
  withPeeringConfig(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          peering_config: value,
        },
      },
    },
  },
  '#withPeeringConfigMixin':: d.fn(help='`google-beta.list[obj].withPeeringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the peering_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPeeringConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `peering_config` field.\n', args=[]),
  withPeeringConfigMixin(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          peering_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPrivateVisibilityConfig':: d.fn(help='`google-beta.list[obj].withPrivateVisibilityConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the private_visibility_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withPrivateVisibilityConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `private_visibility_config` field.\n', args=[]),
  withPrivateVisibilityConfig(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          private_visibility_config: value,
        },
      },
    },
  },
  '#withPrivateVisibilityConfigMixin':: d.fn(help='`google-beta.list[obj].withPrivateVisibilityConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the private_visibility_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPrivateVisibilityConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `private_visibility_config` field.\n', args=[]),
  withPrivateVisibilityConfigMixin(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          private_visibility_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReverseLookup':: d.fn(help='`google-beta.bool.withReverseLookup` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the reverse_lookup field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `reverse_lookup` field.\n', args=[]),
  withReverseLookup(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          reverse_lookup: value,
        },
      },
    },
  },
  '#withServiceDirectoryConfig':: d.fn(help='`google-beta.list[obj].withServiceDirectoryConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_directory_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withServiceDirectoryConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_directory_config` field.\n', args=[]),
  withServiceDirectoryConfig(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          service_directory_config: value,
        },
      },
    },
  },
  '#withServiceDirectoryConfigMixin':: d.fn(help='`google-beta.list[obj].withServiceDirectoryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the service_directory_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withServiceDirectoryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `service_directory_config` field.\n', args=[]),
  withServiceDirectoryConfigMixin(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          service_directory_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVisibility':: d.fn(help='`google-beta.string.withVisibility` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the visibility field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `visibility` field.\n', args=[]),
  withVisibility(resourceLabel, value): {
    resource+: {
      google_dns_managed_zone+: {
        [resourceLabel]+: {
          visibility: value,
        },
      },
    },
  },
}
