local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_vmwareengine_vcenter_credentials', url='', help='`google_vmwareengine_vcenter_credentials` represents the `google-beta_google_vmwareengine_vcenter_credentials` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_vmwareengine_vcenter_credentials.new` injects a new `data_google-beta_google_vmwareengine_vcenter_credentials` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_vmwareengine_vcenter_credentials.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_vmwareengine_vcenter_credentials` using the reference:\n\n    $._ref.data_google-beta_google_vmwareengine_vcenter_credentials.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_vmwareengine_vcenter_credentials.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `parent` (`string`): The resource name of the private cloud which contains vcenter.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    parent,
    _meta={}
  ):: tf.withData(
    type='google_vmwareengine_vcenter_credentials',
    label=dataSrcLabel,
    attrs=self.newAttrs(parent=parent),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_vmwareengine_vcenter_credentials.newAttrs` constructs a new object with attributes and blocks configured for the `google_vmwareengine_vcenter_credentials`\nTerraform data source.\n\nUnlike [google-beta.data.google_vmwareengine_vcenter_credentials.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `parent` (`string`): The resource name of the private cloud which contains vcenter.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_vmwareengine_vcenter_credentials` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent
  ):: std.prune(a={
    parent: parent,
  }),
  '#withParent':: d.fn(help='`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the parent field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(dataSrcLabel, value): {
    data+: {
      google_vmwareengine_vcenter_credentials+: {
        [dataSrcLabel]+: {
          parent: value,
        },
      },
    },
  },
}