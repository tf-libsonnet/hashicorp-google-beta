local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_runtimeconfig_config', url='', help='`google_runtimeconfig_config` represents the `google-beta_google_runtimeconfig_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_runtimeconfig_config.new` injects a new `google-beta_google_runtimeconfig_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_runtimeconfig_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_runtimeconfig_config` using the reference:\n\n    $._ref.google-beta_google_runtimeconfig_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_runtimeconfig_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description to associate with the runtime config. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the runtime config.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_runtimeconfig_config',
    label=resourceLabel,
    attrs=self.newAttrs(description=description, name=name, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_runtimeconfig_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_runtimeconfig_config`\nTerraform resource.\n\nUnlike [google-beta.google_runtimeconfig_config.new](#fn-googleruntimeconfigconfignew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description to associate with the runtime config. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the runtime config.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_runtimeconfig_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    project=null
  ):: std.prune(a={
    description: description,
    name: name,
    project: project,
  }),
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_runtimeconfig_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_runtimeconfig_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_runtimeconfig_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
