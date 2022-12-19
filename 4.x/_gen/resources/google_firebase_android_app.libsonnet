local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_firebase_android_app', url='', help='`google_firebase_android_app` represents the `google-beta_google_firebase_android_app` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_firebase_android_app.new` injects a new `google-beta_google_firebase_android_app` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_firebase_android_app.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_firebase_android_app` using the reference:\n\n    $._ref.google-beta_google_firebase_android_app.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_firebase_android_app.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `deletion_policy` (`string`): (Optional) Set to \u0026#39;ABANDON\u0026#39; to allow the AndroidApp to be untracked from terraform state\nrather than deleted upon \u0026#39;terraform destroy\u0026#39;. This is useful because the AndroidApp may be\nserving traffic. Set to \u0026#39;DELETE\u0026#39; to delete the AndroidApp. Default to \u0026#39;DELETE\u0026#39;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `display_name` (`string`): The user-assigned display name of the App.\n  - `package_name` (`string`): Immutable. The canonical package name of the Android app as would appear in the Google Play\nDeveloper Console. When `null`, the `package_name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_android_app.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    deletion_policy=null,
    package_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_android_app',
    label=resourceLabel,
    attrs=self.newAttrs(
      deletion_policy=deletion_policy,
      display_name=display_name,
      package_name=package_name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_firebase_android_app.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_android_app`\nTerraform resource.\n\nUnlike [google-beta.google_firebase_android_app.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deletion_policy` (`string`): (Optional) Set to &#39;ABANDON&#39; to allow the AndroidApp to be untracked from terraform state\nrather than deleted upon &#39;terraform destroy&#39;. This is useful because the AndroidApp may be\nserving traffic. Set to &#39;DELETE&#39; to delete the AndroidApp. Default to &#39;DELETE&#39;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `display_name` (`string`): The user-assigned display name of the App.\n  - `package_name` (`string`): Immutable. The canonical package name of the Android app as would appear in the Google Play\nDeveloper Console. When `null`, the `package_name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_android_app.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_android_app` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    deletion_policy=null,
    package_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    deletion_policy: deletion_policy,
    display_name: display_name,
    package_name: package_name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_firebase_android_app.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDeletionPolicy':: d.fn(help='`google-beta.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deletion_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deletion_policy` field.\n', args=[]),
  withDeletionPolicy(resourceLabel, value): {
    resource+: {
      google_firebase_android_app+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_firebase_android_app+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withPackageName':: d.fn(help='`google-beta.string.withPackageName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the package_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `package_name` field.\n', args=[]),
  withPackageName(resourceLabel, value): {
    resource+: {
      google_firebase_android_app+: {
        [resourceLabel]+: {
          package_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firebase_android_app+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firebase_android_app+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firebase_android_app+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
