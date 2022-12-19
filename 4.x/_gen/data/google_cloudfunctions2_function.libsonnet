local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_cloudfunctions2_function', url='', help='`google_cloudfunctions2_function` represents the `google-beta_google_cloudfunctions2_function` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_cloudfunctions2_function.new` injects a new `data_google-beta_google_cloudfunctions2_function` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_cloudfunctions2_function.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_cloudfunctions2_function` using the reference:\n\n    $._ref.data_google-beta_google_cloudfunctions2_function.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_cloudfunctions2_function.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `location` (`string`): The location of this cloud function.\n  - `name` (`string`): A user-defined name of the function. Function names must\nbe unique globally and match pattern \u0026#39;projects/*/locations/*/functions/*\u0026#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    location,
    name,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_cloudfunctions2_function',
    label=dataSrcLabel,
    attrs=self.newAttrs(location=location, name=name, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_cloudfunctions2_function.newAttrs` constructs a new object with attributes and blocks configured for the `google_cloudfunctions2_function`\nTerraform data source.\n\nUnlike [google-beta.data.google_cloudfunctions2_function.new](#fn-google_cloudfunctions2_functionnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The location of this cloud function.\n  - `name` (`string`): A user-defined name of the function. Function names must\nbe unique globally and match pattern &#39;projects/*/locations/*/functions/*&#39;.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_cloudfunctions2_function` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    project=null
  ):: std.prune(a={
    location: location,
    name: name,
    project: project,
  }),
  '#withLocation':: d.fn(help='`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_cloudfunctions2_function+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(dataSrcLabel, value): {
    data+: {
      google_cloudfunctions2_function+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_cloudfunctions2_function+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
