local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_artifact_registry_vpcsc_config', url='', help='`google_artifact_registry_vpcsc_config` represents the `google-beta_google_artifact_registry_vpcsc_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_artifact_registry_vpcsc_config.new` injects a new `google-beta_google_artifact_registry_vpcsc_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_artifact_registry_vpcsc_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_artifact_registry_vpcsc_config` using the reference:\n\n    $._ref.google-beta_google_artifact_registry_vpcsc_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_artifact_registry_vpcsc_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): The name of the location this config is located in. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `vpcsc_policy` (`string`): The VPC SC policy for project and location. Possible values: [\u0026#34;DENY\u0026#34;, \u0026#34;ALLOW\u0026#34;] When `null`, the `vpcsc_policy` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_vpcsc_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location=null,
    project=null,
    timeouts=null,
    vpcsc_policy=null,
    _meta={}
  ):: tf.withResource(
    type='google_artifact_registry_vpcsc_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      project=project,
      timeouts=timeouts,
      vpcsc_policy=vpcsc_policy
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_artifact_registry_vpcsc_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_artifact_registry_vpcsc_config`\nTerraform resource.\n\nUnlike [google-beta.google_artifact_registry_vpcsc_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The name of the location this config is located in. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `vpcsc_policy` (`string`): The VPC SC policy for project and location. Possible values: [&#34;DENY&#34;, &#34;ALLOW&#34;] When `null`, the `vpcsc_policy` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_vpcsc_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_artifact_registry_vpcsc_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location=null,
    project=null,
    timeouts=null,
    vpcsc_policy=null
  ):: std.prune(a={
    location: location,
    project: project,
    timeouts: timeouts,
    vpcsc_policy: vpcsc_policy,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_artifact_registry_vpcsc_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_artifact_registry_vpcsc_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_artifact_registry_vpcsc_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_artifact_registry_vpcsc_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_artifact_registry_vpcsc_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVpcscPolicy':: d.fn(help='`google-beta.string.withVpcscPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vpcsc_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vpcsc_policy` field.\n', args=[]),
  withVpcscPolicy(resourceLabel, value): {
    resource+: {
      google_artifact_registry_vpcsc_config+: {
        [resourceLabel]+: {
          vpcsc_policy: value,
        },
      },
    },
  },
}
