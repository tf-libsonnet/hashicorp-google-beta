local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_sql_database', url='', help='`google_sql_database` represents the `google-beta_google_sql_database` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_sql_database.new` injects a new `data_google-beta_google_sql_database` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_sql_database.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_sql_database` using the reference:\n\n    $._ref.data_google-beta_google_sql_database.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_sql_database.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `instance` (`string`): The name of the Cloud SQL instance. This does not include the project\nID.\n  - `name` (`string`): The name of the database in the Cloud SQL instance.\nThis does not include the project ID or instance name.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    instance,
    name,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_sql_database',
    label=dataSrcLabel,
    attrs=self.newAttrs(instance=instance, name=name, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_sql_database.newAttrs` constructs a new object with attributes and blocks configured for the `google_sql_database`\nTerraform data source.\n\nUnlike [google-beta.data.google_sql_database.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `instance` (`string`): The name of the Cloud SQL instance. This does not include the project\nID.\n  - `name` (`string`): The name of the database in the Cloud SQL instance.\nThis does not include the project ID or instance name.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_sql_database` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance,
    name,
    project=null
  ):: std.prune(a={
    instance: instance,
    name: name,
    project: project,
  }),
  '#withInstance':: d.fn(help='`google-beta.string.withInstance` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the instance field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance` field.\n', args=[]),
  withInstance(dataSrcLabel, value): {
    data+: {
      google_sql_database+: {
        [dataSrcLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value): {
    data+: {
      google_sql_database+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_sql_database+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
