local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_dataplex_task_iam_policy', url='', help='`google_dataplex_task_iam_policy` represents the `google-beta_google_dataplex_task_iam_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.google_dataplex_task_iam_policy.new` injects a new `google-beta_google_dataplex_task_iam_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_dataplex_task_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_dataplex_task_iam_policy` using the reference:\n\n    $._ref.google-beta_google_dataplex_task_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_dataplex_task_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `lake` (`string`): Set the `lake` field on the resulting resource block.\n  - `location` (`string`): Set the `location` field on the resulting resource block. When `null`, the `location` field will be omitted from the resulting object.\n  - `policy_data` (`string`): Set the `policy_data` field on the resulting resource block.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `task_id` (`string`): Set the `task_id` field on the resulting resource block.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    lake,
    policy_data,
    task_id,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataplex_task_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      lake=lake,
      location=location,
      policy_data=policy_data,
      project=project,
      task_id=task_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_dataplex_task_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataplex_task_iam_policy`\nTerraform resource.\n\nUnlike [google-beta.google_dataplex_task_iam_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `lake` (`string`): Set the `lake` field on the resulting object.\n  - `location` (`string`): Set the `location` field on the resulting object. When `null`, the `location` field will be omitted from the resulting object.\n  - `policy_data` (`string`): Set the `policy_data` field on the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `task_id` (`string`): Set the `task_id` field on the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataplex_task_iam_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    lake,
    policy_data,
    task_id,
    location=null,
    project=null
  ):: std.prune(a={
    lake: lake,
    location: location,
    policy_data: policy_data,
    project: project,
    task_id: task_id,
  }),
  '#withLake':: d.fn(help='`google-beta.string.withLake` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the lake field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `lake` field.\n', args=[]),
  withLake(resourceLabel, value): {
    resource+: {
      google_dataplex_task_iam_policy+: {
        [resourceLabel]+: {
          lake: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dataplex_task_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPolicyData':: d.fn(help='`google-beta.string.withPolicyData` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the policy_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `policy_data` field.\n', args=[]),
  withPolicyData(resourceLabel, value): {
    resource+: {
      google_dataplex_task_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataplex_task_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTaskId':: d.fn(help='`google-beta.string.withTaskId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the task_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `task_id` field.\n', args=[]),
  withTaskId(resourceLabel, value): {
    resource+: {
      google_dataplex_task_iam_policy+: {
        [resourceLabel]+: {
          task_id: value,
        },
      },
    },
  },
}
