local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dialogflow_cx_environment', url='', help='`google_dialogflow_cx_environment` represents the `google-beta_google_dialogflow_cx_environment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_dialogflow_cx_environment.new` injects a new `google-beta_google_dialogflow_cx_environment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dialogflow_cx_environment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dialogflow_cx_environment` using the reference:\n\n    $._ref.google-beta_google_dialogflow_cx_environment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dialogflow_cx_environment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the environment (unique in an agent). Limit of 64 characters.\n  - `parent` (`string`): The Agent to create an Environment for.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dialogflow_cx_environment.timeouts.new](#fn-timeoutsnew) constructor.\n  - `version_configs` (`list[obj]`): A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned. When `null`, the `version_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dialogflow_cx_environment.version_configs.new](#fn-version_configsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    description=null,
    parent=null,
    timeouts=null,
    version_configs=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_environment',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      parent=parent,
      timeouts=timeouts,
      version_configs=version_configs
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dialogflow_cx_environment.newAttrs` constructs a new object with attributes and blocks configured for the `google_dialogflow_cx_environment`\nTerraform resource.\n\nUnlike [google-beta.google_dialogflow_cx_environment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the environment (unique in an agent). Limit of 64 characters.\n  - `parent` (`string`): The Agent to create an Environment for.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dialogflow_cx_environment.timeouts.new](#fn-timeoutsnew) constructor.\n  - `version_configs` (`list[obj]`): A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned. When `null`, the `version_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dialogflow_cx_environment.version_configs.new](#fn-version_configsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dialogflow_cx_environment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    description=null,
    parent=null,
    timeouts=null,
    version_configs=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    parent: parent,
    timeouts: timeouts,
    version_configs: version_configs,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_dialogflow_cx_environment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  version_configs:: {
    '#new':: d.fn(help='\n`google-beta.google_dialogflow_cx_environment.version_configs.new` constructs a new object with attributes and blocks configured for the `version_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `version` (`string`): Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.\n\n**Returns**:\n  - An attribute object that represents the `version_configs` sub block.\n', args=[]),
    new(
      version
    ):: std.prune(a={
      version: version,
    }),
  },
  '#withDescription':: d.fn(help='`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersionConfigs':: d.fn(help='`google-beta.list[obj].withVersionConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the version_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withVersionConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `version_configs` field.\n', args=[]),
  withVersionConfigs(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          version_configs: value,
        },
      },
    },
  },
  '#withVersionConfigsMixin':: d.fn(help='`google-beta.list[obj].withVersionConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the version_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withVersionConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `version_configs` field.\n', args=[]),
  withVersionConfigsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          version_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
