local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_firebase_database_instance', url='', help='`google_firebase_database_instance` represents the `google-beta_google_firebase_database_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_firebase_database_instance.new` injects a new `google-beta_google_firebase_database_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_firebase_database_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_firebase_database_instance` using the reference:\n\n    $._ref.google-beta_google_firebase_database_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_firebase_database_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `desired_state` (`string`): The intended database state. When `null`, the `desired_state` field will be omitted from the resulting object.\n  - `instance_id` (`string`): The globally unique identifier of the Firebase Realtime Database instance. \nInstance IDs cannot be reused after deletion.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region where the Firebase Realtime database resides.\nCheck all [available regions](https://firebase.google.com/docs/projects/locations#rtdb-locations)\n  - `type` (`string`): The database type.\nEach project can create one default Firebase Realtime Database, which cannot be deleted once created.\nCreating user Databases is only available for projects on the Blaze plan.\nProjects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo. Default value: \u0026#34;USER_DATABASE\u0026#34; Possible values: [\u0026#34;DEFAULT_DATABASE\u0026#34;, \u0026#34;USER_DATABASE\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_database_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    instance_id,
    region,
    desired_state=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_database_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      desired_state=desired_state,
      instance_id=instance_id,
      project=project,
      region=region,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_firebase_database_instance.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_database_instance`\nTerraform resource.\n\nUnlike [google-beta.google_firebase_database_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `desired_state` (`string`): The intended database state. When `null`, the `desired_state` field will be omitted from the resulting object.\n  - `instance_id` (`string`): The globally unique identifier of the Firebase Realtime Database instance. \nInstance IDs cannot be reused after deletion.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): A reference to the region where the Firebase Realtime database resides.\nCheck all [available regions](https://firebase.google.com/docs/projects/locations#rtdb-locations)\n  - `type` (`string`): The database type.\nEach project can create one default Firebase Realtime Database, which cannot be deleted once created.\nCreating user Databases is only available for projects on the Blaze plan.\nProjects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo. Default value: &#34;USER_DATABASE&#34; Possible values: [&#34;DEFAULT_DATABASE&#34;, &#34;USER_DATABASE&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_database_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_database_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance_id,
    region,
    desired_state=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    desired_state: desired_state,
    instance_id: instance_id,
    project: project,
    region: region,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_firebase_database_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDesiredState':: d.fn(help='`google-beta.string.withDesiredState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the desired_state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `desired_state` field.\n', args=[]),
  withDesiredState(resourceLabel, value): {
    resource+: {
      google_firebase_database_instance+: {
        [resourceLabel]+: {
          desired_state: value,
        },
      },
    },
  },
  '#withInstanceId':: d.fn(help='`google-beta.string.withInstanceId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_id` field.\n', args=[]),
  withInstanceId(resourceLabel, value): {
    resource+: {
      google_firebase_database_instance+: {
        [resourceLabel]+: {
          instance_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_firebase_database_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_firebase_database_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_firebase_database_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_firebase_database_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google-beta.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_firebase_database_instance+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
