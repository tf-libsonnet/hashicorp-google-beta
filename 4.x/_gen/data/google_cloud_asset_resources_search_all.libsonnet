local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_cloud_asset_resources_search_all', url='', help='`google_cloud_asset_resources_search_all` represents the `google-beta_google_cloud_asset_resources_search_all` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google-beta.data.google_cloud_asset_resources_search_all.new` injects a new `data_google-beta_google_cloud_asset_resources_search_all` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.data.google_cloud_asset_resources_search_all.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.data.google_cloud_asset_resources_search_all` using the reference:\n\n    $._ref.data_google-beta_google_cloud_asset_resources_search_all.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google-beta_google_cloud_asset_resources_search_all.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `asset_types` (`list`): Set the `asset_types` field on the resulting data source block. When `null`, the `asset_types` field will be omitted from the resulting object.\n  - `query` (`string`): Set the `query` field on the resulting data source block. When `null`, the `query` field will be omitted from the resulting object.\n  - `scope` (`string`): Set the `scope` field on the resulting data source block.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    scope,
    asset_types=null,
    query=null,
    _meta={}
  ):: tf.withData(
    type='google_cloud_asset_resources_search_all',
    label=dataSrcLabel,
    attrs=self.newAttrs(asset_types=asset_types, query=query, scope=scope),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.data.google_cloud_asset_resources_search_all.newAttrs` constructs a new object with attributes and blocks configured for the `google_cloud_asset_resources_search_all`\nTerraform data source.\n\nUnlike [google-beta.data.google_cloud_asset_resources_search_all.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `asset_types` (`list`): Set the `asset_types` field on the resulting object. When `null`, the `asset_types` field will be omitted from the resulting object.\n  - `query` (`string`): Set the `query` field on the resulting object. When `null`, the `query` field will be omitted from the resulting object.\n  - `scope` (`string`): Set the `scope` field on the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_cloud_asset_resources_search_all` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    scope,
    asset_types=null,
    query=null
  ):: std.prune(a={
    asset_types: asset_types,
    query: query,
    scope: scope,
  }),
  '#withAssetTypes':: d.fn(help='`google-beta.list.withAssetTypes` constructs a mixin object that can be merged into the `list`\nTerraform data source block to set or update the asset_types field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `asset_types` field.\n', args=[]),
  withAssetTypes(dataSrcLabel, value): {
    data+: {
      google_cloud_asset_resources_search_all+: {
        [dataSrcLabel]+: {
          asset_types: value,
        },
      },
    },
  },
  '#withQuery':: d.fn(help='`google-beta.string.withQuery` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the query field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `query` field.\n', args=[]),
  withQuery(dataSrcLabel, value): {
    data+: {
      google_cloud_asset_resources_search_all+: {
        [dataSrcLabel]+: {
          query: value,
        },
      },
    },
  },
  '#withScope':: d.fn(help='`google-beta.string.withScope` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the scope field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope` field.\n', args=[]),
  withScope(dataSrcLabel, value): {
    data+: {
      google_cloud_asset_resources_search_all+: {
        [dataSrcLabel]+: {
          scope: value,
        },
      },
    },
  },
}
