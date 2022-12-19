local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_firebase_web_app', url='', help='`google_firebase_web_app` represents the `google-beta_google_firebase_web_app` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_firebase_web_app.new` injects a new `google-beta_google_firebase_web_app` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_firebase_web_app.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_firebase_web_app` using the reference:\n\n    $._ref.google-beta_google_firebase_web_app.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_firebase_web_app.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `deletion_policy` (`string`): Set to \u0026#39;ABANDON\u0026#39; to allow the WebApp to be untracked from terraform state\nrather than deleted upon \u0026#39;terraform destroy\u0026#39;. This is useful becaue the WebApp may be\nserving traffic. Set to \u0026#39;DELETE\u0026#39; to delete the WebApp. Default to \u0026#39;ABANDON\u0026#39; When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `display_name` (`string`): The user-assigned display name of the App.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_web_app.timeouts.new](#fn-googlefirebasewebapptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    deletion_policy=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_web_app',
    label=resourceLabel,
    attrs=self.newAttrs(
      deletion_policy=deletion_policy,
      display_name=display_name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_firebase_web_app.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_web_app`\nTerraform resource.\n\nUnlike [google-beta.google_firebase_web_app.new](#fn-googlefirebasewebappnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deletion_policy` (`string`): Set to &#39;ABANDON&#39; to allow the WebApp to be untracked from terraform state\nrather than deleted upon &#39;terraform destroy&#39;. This is useful becaue the WebApp may be\nserving traffic. Set to &#39;DELETE&#39; to delete the WebApp. Default to &#39;ABANDON&#39; When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `display_name` (`string`): The user-assigned display name of the App.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_web_app.timeouts.new](#fn-googlefirebasewebapptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_web_app` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    deletion_policy=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    deletion_policy: deletion_policy,
    display_name: display_name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_firebase_web_app.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDeletionPolicy':: d.fn(help='`google-beta.google_firebase_web_app.withDeletionPolicy` constructs a mixin object that can be merged into the `google_firebase_web_app`\nTerraform resource block to set or update the deletion_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `deletion_policy` field.\n', args=[]),
  withDeletionPolicy(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.google_firebase_web_app.withDisplayName` constructs a mixin object that can be merged into the `google_firebase_web_app`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.google_firebase_web_app.withProject` constructs a mixin object that can be merged into the `google_firebase_web_app`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.google_firebase_web_app.withTimeouts` constructs a mixin object that can be merged into the `google_firebase_web_app`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.google_firebase_web_app.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_firebase_web_app`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.google_firebase_web_app.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
