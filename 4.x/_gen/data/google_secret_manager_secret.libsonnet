local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_secret_manager_secret', url='', help='`google_secret_manager_secret` represents the `google-beta_google_secret_manager_secret` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_secret_manager_secret.new` injects a new `data_google-beta_google_secret_manager_secret` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_secret_manager_secret.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_secret_manager_secret` using the reference:\n\n    $._ref.data_google-beta_google_secret_manager_secret.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_secret_manager_secret.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `secret_id` (`string`): This must be unique within the project.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    secret_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_secret_manager_secret',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, secret_id=secret_id),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_secret_manager_secret.newAttrs` constructs a new object with attributes and blocks configured for the `google_secret_manager_secret`\nTerraform data source.\n\nUnlike [google-beta.data.google_secret_manager_secret.new](#fn-googlesecretmanagersecretnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `secret_id` (`string`): This must be unique within the project.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_secret_manager_secret` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    secret_id,
    project=null
  ):: std.prune(a={
    project: project,
    secret_id: secret_id,
  }),
  '#withProject':: d.fn(help='`google-beta.google_secret_manager_secret.withProject` constructs a mixin object that can be merged into the `google_secret_manager_secret`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_secret_manager_secret+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSecretId':: d.fn(help='`google-beta.google_secret_manager_secret.withSecretId` constructs a mixin object that can be merged into the `google_secret_manager_secret`\nTerraform data source block to set or update the secret_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `secret_id` field.\n', args=[]),
  withSecretId(dataSrcLabel, value):: {
    data+: {
      google_secret_manager_secret+: {
        [dataSrcLabel]+: {
          secret_id: value,
        },
      },
    },
  },
}
