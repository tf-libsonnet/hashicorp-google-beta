local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_compute_organization_security_policy', url='', help='`google_compute_organization_security_policy` represents the `google-beta_google_compute_organization_security_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_compute_organization_security_policy.new` injects a new `google-beta_google_compute_organization_security_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_compute_organization_security_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_compute_organization_security_policy` using the reference:\n\n    $._ref.google-beta_google_compute_organization_security_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_compute_organization_security_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A textual description for the organization security policy. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): A textual name of the security policy.\n  - `parent` (`string`): The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.\nFormat: organizations/{organization_id} or folders/{folder_id}\n  - `type` (`string`): The type indicates the intended use of the security policy.\nFor organization security policies, the only supported type\nis \u0026#34;FIREWALL\u0026#34;. Default value: \u0026#34;FIREWALL\u0026#34; Possible values: [\u0026#34;FIREWALL\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy.timeouts.new](#fn-google_compute_organization_security_policytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    parent,
    description=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_organization_security_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      parent=parent,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_compute_organization_security_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_organization_security_policy`\nTerraform resource.\n\nUnlike [google-beta.google_compute_organization_security_policy.new](#fn-google_compute_organization_security_policynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A textual description for the organization security policy. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): A textual name of the security policy.\n  - `parent` (`string`): The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.\nFormat: organizations/{organization_id} or folders/{folder_id}\n  - `type` (`string`): The type indicates the intended use of the security policy.\nFor organization security policies, the only supported type\nis &#34;FIREWALL&#34;. Default value: &#34;FIREWALL&#34; Possible values: [&#34;FIREWALL&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy.timeouts.new](#fn-google_compute_organization_security_policytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_organization_security_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    parent,
    description=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    parent: parent,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_compute_organization_security_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_compute_organization_security_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_compute_organization_security_policy+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_compute_organization_security_policy+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_organization_security_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_organization_security_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google-beta.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_compute_organization_security_policy+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
