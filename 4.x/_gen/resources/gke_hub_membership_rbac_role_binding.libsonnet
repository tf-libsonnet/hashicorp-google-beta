local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_gke_hub_membership_rbac_role_binding', url='', help='`google_gke_hub_membership_rbac_role_binding` represents the `google-beta_google_gke_hub_membership_rbac_role_binding` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_gke_hub_membership_rbac_role_binding.new` injects a new `google-beta_google_gke_hub_membership_rbac_role_binding` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_gke_hub_membership_rbac_role_binding.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_gke_hub_membership_rbac_role_binding` using the reference:\n\n    $._ref.google-beta_google_gke_hub_membership_rbac_role_binding.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_gke_hub_membership_rbac_role_binding.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): Location of the Membership\n  - `membership_id` (`string`): Id of the membership\n  - `membership_rbac_role_binding_id` (`string`): The client-provided identifier of the RBAC Role Binding.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `user` (`string`): Principal that is be authorized in the cluster (at least of one the oneof\nis required). Updating one will unset the other automatically.\nuser is the name of the user as seen by the kubernetes cluster, example\n\u0026#34;alice\u0026#34; or \u0026#34;alice@domain.tld\u0026#34;\n  - `role` (`list[obj]`): Role to bind to the principal. When `null`, the `role` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_membership_rbac_role_binding.role.new](#fn-rolenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_membership_rbac_role_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    membership_id,
    membership_rbac_role_binding_id,
    user,
    project=null,
    role=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_membership_rbac_role_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      membership_id=membership_id,
      membership_rbac_role_binding_id=membership_rbac_role_binding_id,
      project=project,
      role=role,
      timeouts=timeouts,
      user=user
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_gke_hub_membership_rbac_role_binding.newAttrs` constructs a new object with attributes and blocks configured for the `google_gke_hub_membership_rbac_role_binding`\nTerraform resource.\n\nUnlike [google-beta.google_gke_hub_membership_rbac_role_binding.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): Location of the Membership\n  - `membership_id` (`string`): Id of the membership\n  - `membership_rbac_role_binding_id` (`string`): The client-provided identifier of the RBAC Role Binding.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `user` (`string`): Principal that is be authorized in the cluster (at least of one the oneof\nis required). Updating one will unset the other automatically.\nuser is the name of the user as seen by the kubernetes cluster, example\n&#34;alice&#34; or &#34;alice@domain.tld&#34;\n  - `role` (`list[obj]`): Role to bind to the principal. When `null`, the `role` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_membership_rbac_role_binding.role.new](#fn-rolenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_membership_rbac_role_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_gke_hub_membership_rbac_role_binding` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    membership_id,
    membership_rbac_role_binding_id,
    user,
    project=null,
    role=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    membership_id: membership_id,
    membership_rbac_role_binding_id: membership_rbac_role_binding_id,
    project: project,
    role: role,
    timeouts: timeouts,
    user: user,
  }),
  role:: {
    '#new':: d.fn(help='\n`google-beta.google_gke_hub_membership_rbac_role_binding.role.new` constructs a new object with attributes and blocks configured for the `role`\nTerraform sub block.\n\n\n\n**Args**:\n  - `predefined_role` (`string`): PredefinedRole is an ENUM representation of the default Kubernetes Roles Possible values: [&#34;UNKNOWN&#34;, &#34;ADMIN&#34;, &#34;EDIT&#34;, &#34;VIEW&#34;, &#34;ANTHOS_SUPPORT&#34;]\n\n**Returns**:\n  - An attribute object that represents the `role` sub block.\n', args=[]),
    new(
      predefined_role
    ):: std.prune(a={
      predefined_role: predefined_role,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_gke_hub_membership_rbac_role_binding.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMembershipId':: d.fn(help='`google-beta.string.withMembershipId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the membership_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `membership_id` field.\n', args=[]),
  withMembershipId(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          membership_id: value,
        },
      },
    },
  },
  '#withMembershipRbacRoleBindingId':: d.fn(help='`google-beta.string.withMembershipRbacRoleBindingId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the membership_rbac_role_binding_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `membership_rbac_role_binding_id` field.\n', args=[]),
  withMembershipRbacRoleBindingId(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          membership_rbac_role_binding_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`google-beta.list[obj].withRole` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the role field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRoleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  '#withRoleMixin':: d.fn(help='`google-beta.list[obj].withRoleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the role field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRole](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `role` field.\n', args=[]),
  withRoleMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          role+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUser':: d.fn(help='`google-beta.string.withUser` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user` field.\n', args=[]),
  withUser(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_rbac_role_binding+: {
        [resourceLabel]+: {
          user: value,
        },
      },
    },
  },
}
