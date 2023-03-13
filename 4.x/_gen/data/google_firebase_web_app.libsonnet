local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_firebase_web_app', url='', help='`google_firebase_web_app` represents the `google-beta_google_firebase_web_app` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_firebase_web_app.new` injects a new `data_google-beta_google_firebase_web_app` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_firebase_web_app.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_firebase_web_app` using the reference:\n\n    $._ref.data_google-beta_google_firebase_web_app.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_firebase_web_app.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `app_id` (`string`): The globally unique, Firebase-assigned identifier of the App.\nThis identifier should be treated as an opaque token, as the data format is not specified.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    app_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_firebase_web_app',
    label=dataSrcLabel,
    attrs=self.newAttrs(app_id=app_id, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_firebase_web_app.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_web_app`\nTerraform data source.\n\nUnlike [google-beta.data.google_firebase_web_app.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `app_id` (`string`): The globally unique, Firebase-assigned identifier of the App.\nThis identifier should be treated as an opaque token, as the data format is not specified.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_firebase_web_app` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    app_id,
    project=null
  ):: std.prune(a={
    app_id: app_id,
    project: project,
  }),
  '#withAppId':: d.fn(help='`google-beta.string.withAppId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the app_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `app_id` field.\n', args=[]),
  withAppId(dataSrcLabel, value): {
    data+: {
      google_firebase_web_app+: {
        [dataSrcLabel]+: {
          app_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_firebase_web_app+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
