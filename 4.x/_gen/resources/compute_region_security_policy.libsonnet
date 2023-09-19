local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_region_security_policy', url='', help='`google_compute_region_security_policy` represents the `google-beta_google_compute_region_security_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  ddos_protection_config:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_security_policy.ddos_protection_config.new` constructs a new object with attributes and blocks configured for the `ddos_protection_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ddos_protection` (`string`): Google Cloud Armor offers the following options to help protect systems against DDoS attacks:\n- STANDARD: basic always-on protection for network load balancers, protocol forwarding, or VMs with public IP addresses.\n- ADVANCED: additional protections for Managed Protection Plus subscribers who use network load balancers, protocol forwarding, or VMs with public IP addresses.\n- ADVANCED_PREVIEW: flag to enable the security policy in preview mode. Possible values: [&#34;ADVANCED&#34;, &#34;ADVANCED_PREVIEW&#34;, &#34;STANDARD&#34;]\n\n**Returns**:\n  - An attribute object that represents the `ddos_protection_config` sub block.\n', args=[]),
    new(
      ddos_protection
    ):: std.prune(a={
      ddos_protection: ddos_protection,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_compute_region_security_policy.new` injects a new `google-beta_google_compute_region_security_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_region_security_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_region_security_policy` using the reference:\n\n    $._ref.google-beta_google_compute_region_security_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_region_security_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.\nSpecifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created Region Security Policy should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): The type indicates the intended use of the security policy.\n- CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers.\n- CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google\u0026#39;s cache.\n- CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application.\nThis field can be set only at resource creation time. Possible values: [\u0026#34;CLOUD_ARMOR\u0026#34;, \u0026#34;CLOUD_ARMOR_EDGE\u0026#34;, \u0026#34;CLOUD_ARMOR_NETWORK\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `ddos_protection_config` (`list[obj]`): Configuration for Google Cloud Armor DDOS Proctection Config. When `null`, the `ddos_protection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.ddos_protection_config.new](#fn-ddos_protection_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.timeouts.new](#fn-timeoutsnew) constructor.\n  - `user_defined_fields` (`list[obj]`): Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies.\nA user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits.\nRules may then specify matching values for these fields. When `null`, the `user_defined_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.user_defined_fields.new](#fn-user_defined_fieldsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    ddos_protection_config=null,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    user_defined_fields=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_security_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      ddos_protection_config=ddos_protection_config,
      description=description,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      type=type,
      user_defined_fields=user_defined_fields
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_region_security_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_region_security_policy`\nTerraform resource.\n\nUnlike [google-beta.google_compute_region_security_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.\nSpecifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created Region Security Policy should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): The type indicates the intended use of the security policy.\n- CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers.\n- CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google&#39;s cache.\n- CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application.\nThis field can be set only at resource creation time. Possible values: [&#34;CLOUD_ARMOR&#34;, &#34;CLOUD_ARMOR_EDGE&#34;, &#34;CLOUD_ARMOR_NETWORK&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `ddos_protection_config` (`list[obj]`): Configuration for Google Cloud Armor DDOS Proctection Config. When `null`, the `ddos_protection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.ddos_protection_config.new](#fn-ddos_protection_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.timeouts.new](#fn-timeoutsnew) constructor.\n  - `user_defined_fields` (`list[obj]`): Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies.\nA user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits.\nRules may then specify matching values for these fields. When `null`, the `user_defined_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.user_defined_fields.new](#fn-user_defined_fieldsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_region_security_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    ddos_protection_config=null,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    user_defined_fields=null
  ):: std.prune(a={
    ddos_protection_config: ddos_protection_config,
    description: description,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    type: type,
    user_defined_fields: user_defined_fields,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_security_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  user_defined_fields:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_region_security_policy.user_defined_fields.new` constructs a new object with attributes and blocks configured for the `user_defined_fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base` (`string`): The base relative to which &#39;offset&#39; is measured. Possible values are:\n- IPV4: Points to the beginning of the IPv4 header.\n- IPV6: Points to the beginning of the IPv6 header.\n- TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments.\n- UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;, &#34;TCP&#34;, &#34;UDP&#34;]\n  - `mask` (`string`): If specified, apply this mask (bitwise AND) to the field to ignore bits before matching.\nEncoded as a hexadecimal number (starting with &#34;0x&#34;).\nThe last byte of the field (in network byte order) corresponds to the least significant byte of the mask. When `null`, the `mask` field will be omitted from the resulting object.\n  - `name` (`string`): The name of this field. Must be unique within the policy. When `null`, the `name` field will be omitted from the resulting object.\n  - `offset` (`number`): Offset of the first byte of the field (in network byte order) relative to &#39;base&#39;. When `null`, the `offset` field will be omitted from the resulting object.\n  - `size` (`number`): Size of the field in bytes. Valid values: 1-4. When `null`, the `size` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `user_defined_fields` sub block.\n', args=[]),
    new(
      base,
      mask=null,
      name=null,
      offset=null,
      size=null
    ):: std.prune(a={
      base: base,
      mask: mask,
      name: name,
      offset: offset,
      size: size,
    }),
  },
  '#withDdosProtectionConfig':: d.fn(help='`google-beta.list[obj].withDdosProtectionConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ddos_protection_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withDdosProtectionConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ddos_protection_config` field.\n', args=[]),
  withDdosProtectionConfig(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          ddos_protection_config: value,
        },
      },
    },
  },
  '#withDdosProtectionConfigMixin':: d.fn(help='`google-beta.list[obj].withDdosProtectionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ddos_protection_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDdosProtectionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ddos_protection_config` field.\n', args=[]),
  withDdosProtectionConfigMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          ddos_protection_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google-beta.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  '#withUserDefinedFields':: d.fn(help='`google-beta.list[obj].withUserDefinedFields` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the user_defined_fields field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withUserDefinedFieldsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `user_defined_fields` field.\n', args=[]),
  withUserDefinedFields(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          user_defined_fields: value,
        },
      },
    },
  },
  '#withUserDefinedFieldsMixin':: d.fn(help='`google-beta.list[obj].withUserDefinedFieldsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the user_defined_fields field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withUserDefinedFields](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `user_defined_fields` field.\n', args=[]),
  withUserDefinedFieldsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_security_policy+: {
        [resourceLabel]+: {
          user_defined_fields+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
