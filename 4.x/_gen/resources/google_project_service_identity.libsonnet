local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_project_service_identity', url='', help='`google_project_service_identity` represents the `google-beta_google_project_service_identity` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_project_service_identity.new` injects a new `google-beta_google_project_service_identity` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_project_service_identity.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_project_service_identity` using the reference:\n\n    $._ref.google-beta_google_project_service_identity.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_project_service_identity.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `email` (`string`):  When `null`, the `email` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): \n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_project_service_identity.timeouts.new](#fn-google_project_service_identitytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    service,
    email=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_service_identity',
    label=resourceLabel,
    attrs=self.newAttrs(
      email=email,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_project_service_identity.newAttrs` constructs a new object with attributes and blocks configured for the `google_project_service_identity`\nTerraform resource.\n\nUnlike [google-beta.google_project_service_identity.new](#fn-google_project_service_identitynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `email` (`string`):  When `null`, the `email` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): \n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_project_service_identity.timeouts.new](#fn-google_project_service_identitytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_project_service_identity` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    service,
    email=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    email: email,
    project: project,
    service: service,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_project_service_identity.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      read=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
    }),
  },
  '#withEmail':: d.fn(help='`google-beta.string.withEmail` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the email field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `email` field.\n', args=[]),
  withEmail(resourceLabel, value): {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          email: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google-beta.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
