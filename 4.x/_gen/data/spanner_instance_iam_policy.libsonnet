local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_spanner_instance_iam_policy', url='', help='`google_spanner_instance_iam_policy` represents the `google-beta_google_spanner_instance_iam_policy` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_spanner_instance_iam_policy.new` injects a new `data_google-beta_google_spanner_instance_iam_policy` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_spanner_instance_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_spanner_instance_iam_policy` using the reference:\n\n    $._ref.data_google-beta_google_spanner_instance_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_spanner_instance_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `instance` (`string`): Set the `instance` field on the resulting data source block.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    instance,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_spanner_instance_iam_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(instance=instance, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_spanner_instance_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_spanner_instance_iam_policy`\nTerraform data source.\n\nUnlike [google-beta.data.google_spanner_instance_iam_policy.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `instance` (`string`): Set the `instance` field on the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_spanner_instance_iam_policy` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance,
    project=null
  ):: std.prune(a={
    instance: instance,
    project: project,
  }),
  '#withInstance':: d.fn(help='`google-beta.string.withInstance` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the instance field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance` field.\n', args=[]),
  withInstance(dataSrcLabel, value): {
    data+: {
      google_spanner_instance_iam_policy+: {
        [dataSrcLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_spanner_instance_iam_policy+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
