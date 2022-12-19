local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_service_directory_endpoint', url='', help='`google_service_directory_endpoint` represents the `google-beta_google_service_directory_endpoint` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_service_directory_endpoint.new` injects a new `google-beta_google_service_directory_endpoint` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_service_directory_endpoint.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_service_directory_endpoint` using the reference:\n\n    $._ref.google-beta_google_service_directory_endpoint.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_service_directory_endpoint.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `address` (`string`): IPv4 or IPv6 address of the endpoint. When `null`, the `address` field will be omitted from the resulting object.\n  - `endpoint_id` (`string`): The Resource ID must be 1-63 characters long, including digits,\nlowercase letters or the hyphen character.\n  - `metadata` (`obj`): Metadata for the endpoint. This data can be consumed\nby service clients. The entire metadata dictionary may contain\nup to 512 characters, spread across all key-value pairs.\nMetadata that goes beyond any these limits will be rejected. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `network` (`string`): The URL to the network, such as projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME. When `null`, the `network` field will be omitted from the resulting object.\n  - `port` (`number`): Port that the endpoint is running on, must be in the\nrange of [0, 65535]. If unspecified, the default is 0. When `null`, the `port` field will be omitted from the resulting object.\n  - `service` (`string`): The resource name of the service that this endpoint provides.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_service_directory_endpoint.timeouts.new](#fn-google_service_directory_endpointtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    endpoint_id,
    service,
    address=null,
    metadata=null,
    network=null,
    port=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_directory_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      address=address,
      endpoint_id=endpoint_id,
      metadata=metadata,
      network=network,
      port=port,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_service_directory_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `google_service_directory_endpoint`\nTerraform resource.\n\nUnlike [google-beta.google_service_directory_endpoint.new](#fn-google_service_directory_endpointnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `address` (`string`): IPv4 or IPv6 address of the endpoint. When `null`, the `address` field will be omitted from the resulting object.\n  - `endpoint_id` (`string`): The Resource ID must be 1-63 characters long, including digits,\nlowercase letters or the hyphen character.\n  - `metadata` (`obj`): Metadata for the endpoint. This data can be consumed\nby service clients. The entire metadata dictionary may contain\nup to 512 characters, spread across all key-value pairs.\nMetadata that goes beyond any these limits will be rejected. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `network` (`string`): The URL to the network, such as projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME. When `null`, the `network` field will be omitted from the resulting object.\n  - `port` (`number`): Port that the endpoint is running on, must be in the\nrange of [0, 65535]. If unspecified, the default is 0. When `null`, the `port` field will be omitted from the resulting object.\n  - `service` (`string`): The resource name of the service that this endpoint provides.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_service_directory_endpoint.timeouts.new](#fn-google_service_directory_endpointtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_service_directory_endpoint` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    endpoint_id,
    service,
    address=null,
    metadata=null,
    network=null,
    port=null,
    timeouts=null
  ):: std.prune(a={
    address: address,
    endpoint_id: endpoint_id,
    metadata: metadata,
    network: network,
    port: port,
    service: service,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_service_directory_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAddress':: d.fn(help='`google-beta.string.withAddress` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the address field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `address` field.\n', args=[]),
  withAddress(resourceLabel, value): {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          address: value,
        },
      },
    },
  },
  '#withEndpointId':: d.fn(help='`google-beta.string.withEndpointId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the endpoint_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `endpoint_id` field.\n', args=[]),
  withEndpointId(resourceLabel, value): {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          endpoint_id: value,
        },
      },
    },
  },
  '#withMetadata':: d.fn(help='`google-beta.obj.withMetadata` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the metadata field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google-beta.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPort':: d.fn(help='`google-beta.number.withPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `port` field.\n', args=[]),
  withPort(resourceLabel, value): {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google-beta.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
