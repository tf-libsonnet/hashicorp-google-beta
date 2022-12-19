local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_address', url='', help='`google_compute_address` represents the `google-beta_google_compute_address` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_compute_address.new` injects a new `google-beta_google_compute_address` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_address.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_address` using the reference:\n\n    $._ref.google-beta_google_compute_address.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_address.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `address` (`string`): The static external IP address represented by this resource. Only\nIPv4 is supported. An address may only be specified for INTERNAL\naddress types. The IP address must be inside the specified subnetwork,\nif any. Set by the API if undefined. When `null`, the `address` field will be omitted from the resulting object.\n  - `address_type` (`string`): The type of address to reserve. Default value: \u0026#34;EXTERNAL\u0026#34; Possible values: [\u0026#34;INTERNAL\u0026#34;, \u0026#34;EXTERNAL\u0026#34;] When `null`, the `address_type` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this address.  A list of key-\u0026gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39;\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `network` (`string`): The URL of the network in which to reserve the address. This field\ncan only be used with INTERNAL type with the VPC_PEERING and\nIPSEC_INTERCONNECT purposes. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_tier` (`string`): The networking tier used for configuring this address. If this field is not\nspecified, it is assumed to be PREMIUM. Possible values: [\u0026#34;PREMIUM\u0026#34;, \u0026#34;STANDARD\u0026#34;] When `null`, the `network_tier` field will be omitted from the resulting object.\n  - `prefix_length` (`number`): The prefix length if the resource represents an IP range. When `null`, the `prefix_length` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `purpose` (`string`): The purpose of this resource, which can be one of the following values:\n\n* GCE_ENDPOINT for addresses that are used by VM instances, alias IP\n  ranges, internal load balancers, and similar resources.\n\n* SHARED_LOADBALANCER_VIP for an address that can be used by multiple\n  internal load balancers.\n\n* VPC_PEERING for addresses that are reserved for VPC peer networks.\n\n* IPSEC_INTERCONNECT for addresses created from a private IP range\n  that are reserved for a VLAN attachment in an IPsec-encrypted Cloud\n  Interconnect configuration. These addresses are regional resources.\n\n* PRIVATE_SERVICE_CONNECT for a private network address that is used\nto configure Private Service Connect. Only global internal addresses\ncan use this purpose.\n\nThis should only be set when using an Internal address. When `null`, the `purpose` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created address should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The URL of the subnetwork in which to reserve the address. If an IP\naddress is specified, it must be within the subnetwork\u0026#39;s IP range.\nThis field can only be used with INTERNAL type with\nGCE_ENDPOINT/DNS_RESOLVER purposes. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_address.timeouts.new](#fn-googlecomputeaddresstimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    address=null,
    address_type=null,
    description=null,
    labels=null,
    network=null,
    network_tier=null,
    prefix_length=null,
    project=null,
    purpose=null,
    region=null,
    subnetwork=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_address',
    label=resourceLabel,
    attrs=self.newAttrs(
      address=address,
      address_type=address_type,
      description=description,
      labels=labels,
      name=name,
      network=network,
      network_tier=network_tier,
      prefix_length=prefix_length,
      project=project,
      purpose=purpose,
      region=region,
      subnetwork=subnetwork,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_address.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_address`\nTerraform resource.\n\nUnlike [google-beta.google_compute_address.new](#fn-googlecomputeaddressnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `address` (`string`): The static external IP address represented by this resource. Only\nIPv4 is supported. An address may only be specified for INTERNAL\naddress types. The IP address must be inside the specified subnetwork,\nif any. Set by the API if undefined. When `null`, the `address` field will be omitted from the resulting object.\n  - `address_type` (`string`): The type of address to reserve. Default value: &#34;EXTERNAL&#34; Possible values: [&#34;INTERNAL&#34;, &#34;EXTERNAL&#34;] When `null`, the `address_type` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this address.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39;\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `network` (`string`): The URL of the network in which to reserve the address. This field\ncan only be used with INTERNAL type with the VPC_PEERING and\nIPSEC_INTERCONNECT purposes. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_tier` (`string`): The networking tier used for configuring this address. If this field is not\nspecified, it is assumed to be PREMIUM. Possible values: [&#34;PREMIUM&#34;, &#34;STANDARD&#34;] When `null`, the `network_tier` field will be omitted from the resulting object.\n  - `prefix_length` (`number`): The prefix length if the resource represents an IP range. When `null`, the `prefix_length` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `purpose` (`string`): The purpose of this resource, which can be one of the following values:\n\n* GCE_ENDPOINT for addresses that are used by VM instances, alias IP\n  ranges, internal load balancers, and similar resources.\n\n* SHARED_LOADBALANCER_VIP for an address that can be used by multiple\n  internal load balancers.\n\n* VPC_PEERING for addresses that are reserved for VPC peer networks.\n\n* IPSEC_INTERCONNECT for addresses created from a private IP range\n  that are reserved for a VLAN attachment in an IPsec-encrypted Cloud\n  Interconnect configuration. These addresses are regional resources.\n\n* PRIVATE_SERVICE_CONNECT for a private network address that is used\nto configure Private Service Connect. Only global internal addresses\ncan use this purpose.\n\nThis should only be set when using an Internal address. When `null`, the `purpose` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created address should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The URL of the subnetwork in which to reserve the address. If an IP\naddress is specified, it must be within the subnetwork&#39;s IP range.\nThis field can only be used with INTERNAL type with\nGCE_ENDPOINT/DNS_RESOLVER purposes. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_address.timeouts.new](#fn-googlecomputeaddresstimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_address` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    address=null,
    address_type=null,
    description=null,
    labels=null,
    network=null,
    network_tier=null,
    prefix_length=null,
    project=null,
    purpose=null,
    region=null,
    subnetwork=null,
    timeouts=null
  ):: std.prune(a={
    address: address,
    address_type: address_type,
    description: description,
    labels: labels,
    name: name,
    network: network,
    network_tier: network_tier,
    prefix_length: prefix_length,
    project: project,
    purpose: purpose,
    region: region,
    subnetwork: subnetwork,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_address.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAddress':: d.fn(help='`google-beta.google_compute_address.withAddress` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `address` field.\n', args=[]),
  withAddress(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          address: value,
        },
      },
    },
  },
  '#withAddressType':: d.fn(help='`google-beta.google_compute_address.withAddressType` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the address_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `address_type` field.\n', args=[]),
  withAddressType(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          address_type: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.google_compute_address.withDescription` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.google_compute_address.withLabels` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.google_compute_address.withName` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google-beta.google_compute_address.withNetwork` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkTier':: d.fn(help='`google-beta.google_compute_address.withNetworkTier` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the network_tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `network_tier` field.\n', args=[]),
  withNetworkTier(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          network_tier: value,
        },
      },
    },
  },
  '#withPrefixLength':: d.fn(help='`google-beta.google_compute_address.withPrefixLength` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the prefix_length field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `prefix_length` field.\n', args=[]),
  withPrefixLength(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          prefix_length: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.google_compute_address.withProject` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPurpose':: d.fn(help='`google-beta.google_compute_address.withPurpose` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the purpose field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `purpose` field.\n', args=[]),
  withPurpose(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.google_compute_address.withRegion` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google-beta.google_compute_address.withSubnetwork` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.google_compute_address.withTimeouts` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.google_compute_address.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_compute_address`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.google_compute_address.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_address+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
