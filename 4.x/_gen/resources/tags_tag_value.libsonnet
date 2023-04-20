local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_tags_tag_value', url='', help='`google_tags_tag_value` represents the `google-beta_google_tags_tag_value` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_tags_tag_value.new` injects a new `google-beta_google_tags_tag_value` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_tags_tag_value.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_tags_tag_value` using the reference:\n\n    $._ref.google-beta_google_tags_tag_value.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_tags_tag_value.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): User-assigned description of the TagValue. Must not exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `parent` (`string`): Input only. The resource name of the new TagValue\u0026#39;s parent. Must be of the form tagKeys/{tag_key_id}.\n  - `short_name` (`string`): Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.\n\nThe short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tags_tag_value.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    parent,
    short_name,
    description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_value',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      parent=parent,
      short_name=short_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_tags_tag_value.newAttrs` constructs a new object with attributes and blocks configured for the `google_tags_tag_value`\nTerraform resource.\n\nUnlike [google-beta.google_tags_tag_value.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): User-assigned description of the TagValue. Must not exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `parent` (`string`): Input only. The resource name of the new TagValue&#39;s parent. Must be of the form tagKeys/{tag_key_id}.\n  - `short_name` (`string`): Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.\n\nThe short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tags_tag_value.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_tags_tag_value` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    short_name,
    description=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    parent: parent,
    short_name: short_name,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_tags_tag_value.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withShortName':: d.fn(help='`google-beta.string.withShortName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the short_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `short_name` field.\n', args=[]),
  withShortName(resourceLabel, value): {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          short_name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_tags_tag_value+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}