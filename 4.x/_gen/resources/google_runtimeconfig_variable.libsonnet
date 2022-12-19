local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_runtimeconfig_variable', url='', help='`google_runtimeconfig_variable` represents the `google-beta_google_runtimeconfig_variable` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_runtimeconfig_variable.new` injects a new `google-beta_google_runtimeconfig_variable` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_runtimeconfig_variable.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_runtimeconfig_variable` using the reference:\n\n    $._ref.google-beta_google_runtimeconfig_variable.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_runtimeconfig_variable.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): The name of the variable to manage. Note that variable names can be hierarchical using slashes (e.g. \u0026#34;prod-variables/hostname\u0026#34;).\n  - `parent` (`string`): The name of the RuntimeConfig resource containing this variable.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `text` (`string`):  When `null`, the `text` field will be omitted from the resulting object.\n  - `value` (`string`):  When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    parent,
    project=null,
    text=null,
    value=null,
    _meta={}
  ):: tf.withResource(
    type='google_runtimeconfig_variable',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      parent=parent,
      project=project,
      text=text,
      value=value
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_runtimeconfig_variable.newAttrs` constructs a new object with attributes and blocks configured for the `google_runtimeconfig_variable`\nTerraform resource.\n\nUnlike [google-beta.google_runtimeconfig_variable.new](#fn-googleruntimeconfigvariablenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): The name of the variable to manage. Note that variable names can be hierarchical using slashes (e.g. &#34;prod-variables/hostname&#34;).\n  - `parent` (`string`): The name of the RuntimeConfig resource containing this variable.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `text` (`string`):  When `null`, the `text` field will be omitted from the resulting object.\n  - `value` (`string`):  When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_runtimeconfig_variable` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    parent,
    project=null,
    text=null,
    value=null
  ):: std.prune(a={
    name: name,
    parent: parent,
    project: project,
    text: text,
    value: value,
  }),
  '#withName':: d.fn(help='`google-beta.google_runtimeconfig_variable.withName` constructs a mixin object that can be merged into the `google_runtimeconfig_variable`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google-beta.google_runtimeconfig_variable.withParent` constructs a mixin object that can be merged into the `google_runtimeconfig_variable`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.google_runtimeconfig_variable.withProject` constructs a mixin object that can be merged into the `google_runtimeconfig_variable`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withText':: d.fn(help='`google-beta.google_runtimeconfig_variable.withText` constructs a mixin object that can be merged into the `google_runtimeconfig_variable`\nTerraform resource block to set or update the text field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `text` field.\n', args=[]),
  withText(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          text: value,
        },
      },
    },
  },
  '#withValue':: d.fn(help='`google-beta.google_runtimeconfig_variable.withValue` constructs a mixin object that can be merged into the `google_runtimeconfig_variable`\nTerraform resource block to set or update the value field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `value` field.\n', args=[]),
  withValue(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          value: value,
        },
      },
    },
  },
}
