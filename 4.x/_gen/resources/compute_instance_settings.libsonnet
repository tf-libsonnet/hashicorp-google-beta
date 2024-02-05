local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_instance_settings', url='', help='`google_compute_instance_settings` represents the `google-beta_google_compute_instance_settings` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  metadata:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_settings.metadata.new` constructs a new object with attributes and blocks configured for the `metadata`\nTerraform sub block.\n\n\n\n**Args**:\n  - `items` (`obj`): A metadata key/value items map. The total size of all keys and values must be less than 512KB When `null`, the `items` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `metadata` sub block.\n', args=[]),
    new(
      items=null
    ):: std.prune(a={
      items: items,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_compute_instance_settings.new` injects a new `google-beta_google_compute_instance_settings` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_instance_settings.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_instance_settings` using the reference:\n\n    $._ref.google-beta_google_compute_instance_settings.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_instance_settings.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): A reference to the zone where the machine resides.\n  - `metadata` (`list[obj]`): The metadata key/value pairs assigned to all the instances in the corresponding scope. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_settings.metadata.new](#fn-metadatanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_settings.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    zone,
    metadata=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_settings',
    label=resourceLabel,
    attrs=self.newAttrs(
      metadata=metadata,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_instance_settings.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_instance_settings`\nTerraform resource.\n\nUnlike [google-beta.google_compute_instance_settings.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): A reference to the zone where the machine resides.\n  - `metadata` (`list[obj]`): The metadata key/value pairs assigned to all the instances in the corresponding scope. When `null`, the `metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_settings.metadata.new](#fn-metadatanew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_instance_settings.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_instance_settings` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    zone,
    metadata=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    metadata: metadata,
    project: project,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_instance_settings.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withMetadata':: d.fn(help='`google-beta.list[obj].withMetadata` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withMetadataMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadata(resourceLabel, value): {
    resource+: {
      google_compute_instance_settings+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  '#withMetadataMixin':: d.fn(help='`google-beta.list[obj].withMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metadata field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMetadata](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metadata` field.\n', args=[]),
  withMetadataMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_settings+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_instance_settings+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_instance_settings+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_settings+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google-beta.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_instance_settings+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
