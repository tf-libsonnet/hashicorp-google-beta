local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_service_directory_service', url='', help='`google_service_directory_service` represents the `google-beta_google_service_directory_service` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_service_directory_service.new` injects a new `google-beta_google_service_directory_service` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_service_directory_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_service_directory_service` using the reference:\n\n    $._ref.google-beta_google_service_directory_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_service_directory_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `metadata` (`obj`): Metadata for the service. This data can be consumed\nby service clients. The entire metadata dictionary may contain\nup to 2000 characters, spread across all key-value pairs.\nMetadata that goes beyond any these limits will be rejected. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `namespace` (`string`): The resource name of the namespace this service will belong to.\n  - `service_id` (`string`): The Resource ID must be 1-63 characters long, including digits,\nlowercase letters or the hyphen character.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_service_directory_service.timeouts.new](#fn-googleservicedirectoryservicetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    namespace,
    service_id,
    metadata=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_directory_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      metadata=metadata,
      namespace=namespace,
      service_id=service_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_service_directory_service.newAttrs` constructs a new object with attributes and blocks configured for the `google_service_directory_service`\nTerraform resource.\n\nUnlike [google-beta.google_service_directory_service.new](#fn-googleservicedirectoryservicenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `metadata` (`obj`): Metadata for the service. This data can be consumed\nby service clients. The entire metadata dictionary may contain\nup to 2000 characters, spread across all key-value pairs.\nMetadata that goes beyond any these limits will be rejected. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `namespace` (`string`): The resource name of the namespace this service will belong to.\n  - `service_id` (`string`): The Resource ID must be 1-63 characters long, including digits,\nlowercase letters or the hyphen character.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_service_directory_service.timeouts.new](#fn-googleservicedirectoryservicetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_service_directory_service` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    namespace,
    service_id,
    metadata=null,
    timeouts=null
  ):: std.prune(a={
    metadata: metadata,
    namespace: namespace,
    service_id: service_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_service_directory_service.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withMetadata':: d.fn(help='`google-beta.google_service_directory_service.withMetadata` constructs a mixin object that can be merged into the `google_service_directory_service`\nTerraform resource block to set or update the metadata field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withNamespace':: d.fn(help='`google-beta.google_service_directory_service.withNamespace` constructs a mixin object that can be merged into the `google_service_directory_service`\nTerraform resource block to set or update the namespace field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `namespace` field.\n', args=[]),
  withNamespace(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          namespace: value,
        },
      },
    },
  },
  '#withServiceId':: d.fn(help='`google-beta.google_service_directory_service.withServiceId` constructs a mixin object that can be merged into the `google_service_directory_service`\nTerraform resource block to set or update the service_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `service_id` field.\n', args=[]),
  withServiceId(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          service_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.google_service_directory_service.withTimeouts` constructs a mixin object that can be merged into the `google_service_directory_service`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.google_service_directory_service.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_service_directory_service`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.google_service_directory_service.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
