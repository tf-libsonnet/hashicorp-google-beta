local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_iam_workload_identity_pool', url='', help='`google_iam_workload_identity_pool` represents the `google-beta_google_iam_workload_identity_pool` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_iam_workload_identity_pool.new` injects a new `data_google-beta_google_iam_workload_identity_pool` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_iam_workload_identity_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_iam_workload_identity_pool` using the reference:\n\n    $._ref.data_google-beta_google_iam_workload_identity_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_iam_workload_identity_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `workload_identity_pool_id` (`string`): The ID to use for the pool, which becomes the final component of the resource name. This\nvalue should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix\n\u0026#39;gcp-\u0026#39; is reserved for use by Google, and may not be specified.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    workload_identity_pool_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_iam_workload_identity_pool',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, workload_identity_pool_id=workload_identity_pool_id),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_iam_workload_identity_pool.newAttrs` constructs a new object with attributes and blocks configured for the `google_iam_workload_identity_pool`\nTerraform data source.\n\nUnlike [google-beta.data.google_iam_workload_identity_pool.new](#fn-googleiamworkloadidentitypoolnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `workload_identity_pool_id` (`string`): The ID to use for the pool, which becomes the final component of the resource name. This\nvalue should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix\n&#39;gcp-&#39; is reserved for use by Google, and may not be specified.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_iam_workload_identity_pool` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    workload_identity_pool_id,
    project=null
  ):: std.prune(a={
    project: project,
    workload_identity_pool_id: workload_identity_pool_id,
  }),
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_iam_workload_identity_pool+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withWorkloadIdentityPoolId':: d.fn(help='`google-beta.string.withWorkloadIdentityPoolId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the workload_identity_pool_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `workload_identity_pool_id` field.\n', args=[]),
  withWorkloadIdentityPoolId(dataSrcLabel, value): {
    data+: {
      google_iam_workload_identity_pool+: {
        [dataSrcLabel]+: {
          workload_identity_pool_id: value,
        },
      },
    },
  },
}
