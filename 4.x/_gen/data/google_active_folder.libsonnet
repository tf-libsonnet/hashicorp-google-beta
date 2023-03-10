local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_active_folder', url='', help='`google_active_folder` represents the `google-beta_google_active_folder` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_active_folder.new` injects a new `data_google-beta_google_active_folder` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_active_folder.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_active_folder` using the reference:\n\n    $._ref.data_google-beta_google_active_folder.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_active_folder.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Set the `display_name` field on the resulting data source block.\n  - `parent` (`string`): Set the `parent` field on the resulting data source block.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    display_name,
    parent,
    _meta={}
  ):: tf.withData(
    type='google_active_folder',
    label=dataSrcLabel,
    attrs=self.newAttrs(display_name=display_name, parent=parent),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_active_folder.newAttrs` constructs a new object with attributes and blocks configured for the `google_active_folder`\nTerraform data source.\n\nUnlike [google-beta.data.google_active_folder.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Set the `display_name` field on the resulting object.\n  - `parent` (`string`): Set the `parent` field on the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_active_folder` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    parent
  ):: std.prune(a={
    display_name: display_name,
    parent: parent,
  }),
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the display_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(dataSrcLabel, value): {
    data+: {
      google_active_folder+: {
        [dataSrcLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the parent field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(dataSrcLabel, value): {
    data+: {
      google_active_folder+: {
        [dataSrcLabel]+: {
          parent: value,
        },
      },
    },
  },
}
