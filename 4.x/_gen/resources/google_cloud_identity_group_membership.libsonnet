local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_cloud_identity_group_membership', url='', help='`google_cloud_identity_group_membership` represents the `google-beta_google_cloud_identity_group_membership` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  member_key:: {
    '#new':: d.fn(help='\n`google-beta.google_cloud_identity_group_membership.member_key.new` constructs a new object with attributes and blocks configured for the `member_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace` (`string`): The namespace in which the entity exists.\n\nIf not specified, the EntityKey represents a Google-managed entity\nsuch as a Google user or a Google Group.\n\nIf specified, the EntityKey represents an external-identity-mapped group.\nThe namespace must correspond to an identity source created in Admin Console\nand must be in the form of &#39;identitysources/{identity_source_id}&#39;. When `null`, the `namespace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `member_key` sub block.\n', args=[]),
    new(
      namespace=null
    ):: std.prune(a={
      namespace: namespace,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_cloud_identity_group_membership.new` injects a new `google-beta_google_cloud_identity_group_membership` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_cloud_identity_group_membership.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_cloud_identity_group_membership` using the reference:\n\n    $._ref.google-beta_google_cloud_identity_group_membership.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_cloud_identity_group_membership.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `group` (`string`): The name of the Group to create this membership in.\n  - `member_key` (`list[obj]`): EntityKey of the member. When `null`, the `member_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_identity_group_membership.member_key.new](#fn-member_keynew) constructor.\n  - `preferred_member_key` (`list[obj]`): EntityKey of the member. When `null`, the `preferred_member_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_identity_group_membership.preferred_member_key.new](#fn-preferred_member_keynew) constructor.\n  - `roles` (`list[obj]`): The MembershipRoles that apply to the Membership.\nMust not contain duplicate MembershipRoles with the same name. When `null`, the `roles` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_identity_group_membership.roles.new](#fn-rolesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_identity_group_membership.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    group,
    member_key=null,
    preferred_member_key=null,
    roles=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_identity_group_membership',
    label=resourceLabel,
    attrs=self.newAttrs(
      group=group,
      member_key=member_key,
      preferred_member_key=preferred_member_key,
      roles=roles,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_cloud_identity_group_membership.newAttrs` constructs a new object with attributes and blocks configured for the `google_cloud_identity_group_membership`\nTerraform resource.\n\nUnlike [google-beta.google_cloud_identity_group_membership.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `group` (`string`): The name of the Group to create this membership in.\n  - `member_key` (`list[obj]`): EntityKey of the member. When `null`, the `member_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_identity_group_membership.member_key.new](#fn-member_keynew) constructor.\n  - `preferred_member_key` (`list[obj]`): EntityKey of the member. When `null`, the `preferred_member_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_identity_group_membership.preferred_member_key.new](#fn-preferred_member_keynew) constructor.\n  - `roles` (`list[obj]`): The MembershipRoles that apply to the Membership.\nMust not contain duplicate MembershipRoles with the same name. When `null`, the `roles` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_identity_group_membership.roles.new](#fn-rolesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_cloud_identity_group_membership.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_cloud_identity_group_membership` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    group,
    member_key=null,
    preferred_member_key=null,
    roles=null,
    timeouts=null
  ):: std.prune(a={
    group: group,
    member_key: member_key,
    preferred_member_key: preferred_member_key,
    roles: roles,
    timeouts: timeouts,
  }),
  preferred_member_key:: {
    '#new':: d.fn(help='\n`google-beta.google_cloud_identity_group_membership.preferred_member_key.new` constructs a new object with attributes and blocks configured for the `preferred_member_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespace` (`string`): The namespace in which the entity exists.\n\nIf not specified, the EntityKey represents a Google-managed entity\nsuch as a Google user or a Google Group.\n\nIf specified, the EntityKey represents an external-identity-mapped group.\nThe namespace must correspond to an identity source created in Admin Console\nand must be in the form of &#39;identitysources/{identity_source_id}&#39;. When `null`, the `namespace` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `preferred_member_key` sub block.\n', args=[]),
    new(
      namespace=null
    ):: std.prune(a={
      namespace: namespace,
    }),
  },
  roles:: {
    '#new':: d.fn(help='\n`google-beta.google_cloud_identity_group_membership.roles.new` constructs a new object with attributes and blocks configured for the `roles`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The name of the MembershipRole. Must be one of OWNER, MANAGER, MEMBER. Possible values: [&#34;OWNER&#34;, &#34;MANAGER&#34;, &#34;MEMBER&#34;]\n\n**Returns**:\n  - An attribute object that represents the `roles` sub block.\n', args=[]),
    new(
      name
    ):: std.prune(a={
      name: name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_cloud_identity_group_membership.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withGroup':: d.fn(help='`google-beta.string.withGroup` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the group field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `group` field.\n', args=[]),
  withGroup(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          group: value,
        },
      },
    },
  },
  '#withMemberKey':: d.fn(help='`google-beta.list[obj].withMemberKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the member_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withMemberKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `member_key` field.\n', args=[]),
  withMemberKey(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          member_key: value,
        },
      },
    },
  },
  '#withMemberKeyMixin':: d.fn(help='`google-beta.list[obj].withMemberKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the member_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMemberKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `member_key` field.\n', args=[]),
  withMemberKeyMixin(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          member_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPreferredMemberKey':: d.fn(help='`google-beta.list[obj].withPreferredMemberKey` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the preferred_member_key field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withPreferredMemberKeyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `preferred_member_key` field.\n', args=[]),
  withPreferredMemberKey(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          preferred_member_key: value,
        },
      },
    },
  },
  '#withPreferredMemberKeyMixin':: d.fn(help='`google-beta.list[obj].withPreferredMemberKeyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the preferred_member_key field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPreferredMemberKey](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `preferred_member_key` field.\n', args=[]),
  withPreferredMemberKeyMixin(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          preferred_member_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRoles':: d.fn(help='`google-beta.list[obj].withRoles` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the roles field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withRolesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `roles` field.\n', args=[]),
  withRoles(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          roles: value,
        },
      },
    },
  },
  '#withRolesMixin':: d.fn(help='`google-beta.list[obj].withRolesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the roles field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRoles](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `roles` field.\n', args=[]),
  withRolesMixin(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          roles+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
