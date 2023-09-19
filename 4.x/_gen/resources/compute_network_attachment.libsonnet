local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_network_attachment', url='', help='`google_compute_network_attachment` represents the `google-beta_google_compute_network_attachment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_compute_network_attachment.new` injects a new `google-beta_google_compute_network_attachment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_network_attachment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_network_attachment` using the reference:\n\n    $._ref.google-beta_google_compute_network_attachment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_network_attachment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `connection_preference` (`string`): The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules. Possible values: [\u0026#34;ACCEPT_AUTOMATIC\u0026#34;, \u0026#34;ACCEPT_MANUAL\u0026#34;, \u0026#34;INVALID\u0026#34;]\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.\n  - `producer_accept_lists` (`list`): Projects that are allowed to connect to this network attachment. The project can be specified using its id or number. When `null`, the `producer_accept_lists` field will be omitted from the resulting object.\n  - `producer_reject_lists` (`list`): Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number. When `null`, the `producer_reject_lists` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. When `null`, the `region` field will be omitted from the resulting object.\n  - `subnetworks` (`list`): An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_network_attachment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    connection_preference,
    name,
    subnetworks,
    description=null,
    producer_accept_lists=null,
    producer_reject_lists=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      connection_preference=connection_preference,
      description=description,
      name=name,
      producer_accept_lists=producer_accept_lists,
      producer_reject_lists=producer_reject_lists,
      project=project,
      region=region,
      subnetworks=subnetworks,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_network_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_network_attachment`\nTerraform resource.\n\nUnlike [google-beta.google_compute_network_attachment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `connection_preference` (`string`): The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules. Possible values: [&#34;ACCEPT_AUTOMATIC&#34;, &#34;ACCEPT_MANUAL&#34;, &#34;INVALID&#34;]\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.\n  - `producer_accept_lists` (`list`): Projects that are allowed to connect to this network attachment. The project can be specified using its id or number. When `null`, the `producer_accept_lists` field will be omitted from the resulting object.\n  - `producer_reject_lists` (`list`): Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number. When `null`, the `producer_reject_lists` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. When `null`, the `region` field will be omitted from the resulting object.\n  - `subnetworks` (`list`): An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_network_attachment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_network_attachment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    connection_preference,
    name,
    subnetworks,
    description=null,
    producer_accept_lists=null,
    producer_reject_lists=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    connection_preference: connection_preference,
    description: description,
    name: name,
    producer_accept_lists: producer_accept_lists,
    producer_reject_lists: producer_reject_lists,
    project: project,
    region: region,
    subnetworks: subnetworks,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_network_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withConnectionPreference':: d.fn(help='`google-beta.string.withConnectionPreference` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the connection_preference field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `connection_preference` field.\n', args=[]),
  withConnectionPreference(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          connection_preference: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProducerAcceptLists':: d.fn(help='`google-beta.list.withProducerAcceptLists` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the producer_accept_lists field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `producer_accept_lists` field.\n', args=[]),
  withProducerAcceptLists(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          producer_accept_lists: value,
        },
      },
    },
  },
  '#withProducerRejectLists':: d.fn(help='`google-beta.list.withProducerRejectLists` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the producer_reject_lists field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `producer_reject_lists` field.\n', args=[]),
  withProducerRejectLists(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          producer_reject_lists: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSubnetworks':: d.fn(help='`google-beta.list.withSubnetworks` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the subnetworks field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `subnetworks` field.\n', args=[]),
  withSubnetworks(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          subnetworks: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_network_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
