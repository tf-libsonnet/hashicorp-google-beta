local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_gke_hub_feature_iam_member', url='', help='`google_gke_hub_feature_iam_member` represents the `google-beta_google_gke_hub_feature_iam_member` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  condition:: {
    '#new':: d.fn(help='\n`google-beta.google_gke_hub_feature_iam_member.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Set the `description` field on the resulting object. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Set the `expression` field on the resulting object.\n  - `title` (`string`): Set the `title` field on the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_gke_hub_feature_iam_member.new` injects a new `google-beta_google_gke_hub_feature_iam_member` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_gke_hub_feature_iam_member.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_gke_hub_feature_iam_member` using the reference:\n\n    $._ref.google-beta_google_gke_hub_feature_iam_member.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_gke_hub_feature_iam_member.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): Set the `location` field on the resulting resource block. When `null`, the `location` field will be omitted from the resulting object.\n  - `member` (`string`): Set the `member` field on the resulting resource block.\n  - `name` (`string`): Set the `name` field on the resulting resource block.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `role` (`string`): Set the `role` field on the resulting resource block.\n  - `condition` (`list[obj]`): Set the `condition` field on the resulting resource block. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature_iam_member.condition.new](#fn-conditionnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    member,
    name,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_feature_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      location=location,
      member=member,
      name=name,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_gke_hub_feature_iam_member.newAttrs` constructs a new object with attributes and blocks configured for the `google_gke_hub_feature_iam_member`\nTerraform resource.\n\nUnlike [google-beta.google_gke_hub_feature_iam_member.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): Set the `location` field on the resulting object. When `null`, the `location` field will be omitted from the resulting object.\n  - `member` (`string`): Set the `member` field on the resulting object.\n  - `name` (`string`): Set the `name` field on the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `role` (`string`): Set the `role` field on the resulting object.\n  - `condition` (`list[obj]`): Set the `condition` field on the resulting object. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_gke_hub_feature_iam_member.condition.new](#fn-conditionnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_gke_hub_feature_iam_member` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    member,
    name,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    location: location,
    member: member,
    name: name,
    project: project,
    role: role,
  }),
  '#withCondition':: d.fn(help='`google-beta.list[obj].withCondition` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the condition field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withConditionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `condition` field.\n', args=[]),
  withCondition(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  '#withConditionMixin':: d.fn(help='`google-beta.list[obj].withConditionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the condition field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCondition](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `condition` field.\n', args=[]),
  withConditionMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_iam_member+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMember':: d.fn(help='`google-beta.string.withMember` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the member field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `member` field.\n', args=[]),
  withMember(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_iam_member+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`google-beta.string.withRole` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
