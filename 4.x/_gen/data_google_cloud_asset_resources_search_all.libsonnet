local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
  newAttrs(
    scope,
    asset_types=null,
    query=null
  ):: std.prune(a={
    asset_types: asset_types,
    query: query,
    scope: scope,
  }),
  withAssetTypes(dataSrcLabel, value):: {
    data+: {
      google_cloud_asset_resources_search_all+: {
        [dataSrcLabel]+: {
          asset_types: value,
        },
      },
    },
  },
  withQuery(dataSrcLabel, value):: {
    data+: {
      google_cloud_asset_resources_search_all+: {
        [dataSrcLabel]+: {
          query: value,
        },
      },
    },
  },
  withScope(dataSrcLabel, value):: {
    data+: {
      google_cloud_asset_resources_search_all+: {
        [dataSrcLabel]+: {
          scope: value,
        },
      },
    },
  },
}
