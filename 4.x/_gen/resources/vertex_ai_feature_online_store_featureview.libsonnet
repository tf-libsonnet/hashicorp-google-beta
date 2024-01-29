local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_vertex_ai_feature_online_store_featureview', url='', help='`google_vertex_ai_feature_online_store_featureview` represents the `google-beta_google_vertex_ai_feature_online_store_featureview` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  big_query_source:: {
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store_featureview.big_query_source.new` constructs a new object with attributes and blocks configured for the `big_query_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `entity_id_columns` (`list`): Columns to construct entityId / row keys. Start by supporting 1 only.\n  - `uri` (`string`): The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.\n\n**Returns**:\n  - An attribute object that represents the `big_query_source` sub block.\n', args=[]),
    new(
      entity_id_columns,
      uri
    ):: std.prune(a={
      entity_id_columns: entity_id_columns,
      uri: uri,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_vertex_ai_feature_online_store_featureview.new` injects a new `google-beta_google_vertex_ai_feature_online_store_featureview` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_vertex_ai_feature_online_store_featureview.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_vertex_ai_feature_online_store_featureview` using the reference:\n\n    $._ref.google-beta_google_vertex_ai_feature_online_store_featureview.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_vertex_ai_feature_online_store_featureview.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `feature_online_store` (`string`): The name of the FeatureOnlineStore to use for the featureview.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this FeatureView.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region for the resource. It should be the same as the featureonlinestore region.\n  - `big_query_source` (`list[obj]`): Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.big_query_source.new](#fn-big_query_sourcenew) constructor.\n  - `sync_config` (`list[obj]`): Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. When `null`, the `sync_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.sync_config.new](#fn-sync_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vector_search_config` (`list[obj]`): Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving. When `null`, the `vector_search_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.new](#fn-vector_search_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    feature_online_store,
    region,
    big_query_source=null,
    labels=null,
    name=null,
    project=null,
    sync_config=null,
    timeouts=null,
    vector_search_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_feature_online_store_featureview',
    label=resourceLabel,
    attrs=self.newAttrs(
      big_query_source=big_query_source,
      feature_online_store=feature_online_store,
      labels=labels,
      name=name,
      project=project,
      region=region,
      sync_config=sync_config,
      timeouts=timeouts,
      vector_search_config=vector_search_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store_featureview.newAttrs` constructs a new object with attributes and blocks configured for the `google_vertex_ai_feature_online_store_featureview`\nTerraform resource.\n\nUnlike [google-beta.google_vertex_ai_feature_online_store_featureview.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `feature_online_store` (`string`): The name of the FeatureOnlineStore to use for the featureview.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this FeatureView.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region for the resource. It should be the same as the featureonlinestore region.\n  - `big_query_source` (`list[obj]`): Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.big_query_source.new](#fn-big_query_sourcenew) constructor.\n  - `sync_config` (`list[obj]`): Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. When `null`, the `sync_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.sync_config.new](#fn-sync_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vector_search_config` (`list[obj]`): Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving. When `null`, the `vector_search_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.new](#fn-vector_search_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_vertex_ai_feature_online_store_featureview` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    feature_online_store,
    region,
    big_query_source=null,
    labels=null,
    name=null,
    project=null,
    sync_config=null,
    timeouts=null,
    vector_search_config=null
  ):: std.prune(a={
    big_query_source: big_query_source,
    feature_online_store: feature_online_store,
    labels: labels,
    name: name,
    project: project,
    region: region,
    sync_config: sync_config,
    timeouts: timeouts,
    vector_search_config: vector_search_config,
  }),
  sync_config:: {
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store_featureview.sync_config.new` constructs a new object with attributes and blocks configured for the `sync_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cron` (`string`): Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.\nTo explicitly set a timezone to the cron tab, apply a prefix in the cron tab: &#34;CRON_TZ=${IANA_TIME_ZONE}&#34; or &#34;TZ=${IANA_TIME_ZONE}&#34;. When `null`, the `cron` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sync_config` sub block.\n', args=[]),
    new(
      cron=null
    ):: std.prune(a={
      cron: cron,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store_featureview.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  vector_search_config:: {
    brute_force_config:: {
      '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.brute_force_config.new` constructs a new object with attributes and blocks configured for the `brute_force_config`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `brute_force_config` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.new` constructs a new object with attributes and blocks configured for the `vector_search_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crowding_column` (`string`): Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k&#39; of the k neighbors returned have the same value of crowdingAttribute. When `null`, the `crowding_column` field will be omitted from the resulting object.\n  - `distance_measure_type` (`string`): The distance measure used in nearest neighbor search.\nFor details on allowed values, see the [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.featureOnlineStores.featureViews#DistanceMeasureType). Possible values: [&#34;SQUARED_L2_DISTANCE&#34;, &#34;COSINE_DISTANCE&#34;, &#34;DOT_PRODUCT_DISTANCE&#34;] When `null`, the `distance_measure_type` field will be omitted from the resulting object.\n  - `embedding_column` (`string`): Column of embedding. This column contains the source data to create index for vector search.\n  - `embedding_dimension` (`number`): The number of dimensions of the input embedding. When `null`, the `embedding_dimension` field will be omitted from the resulting object.\n  - `filter_columns` (`list`): Columns of features that are used to filter vector search results. When `null`, the `filter_columns` field will be omitted from the resulting object.\n  - `brute_force_config` (`list[obj]`): Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search. When `null`, the `brute_force_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.brute_force_config.new](#fn-vector_search_configbrute_force_confignew) constructor.\n  - `tree_ah_config` (`list[obj]`): Configuration options for the tree-AH algorithm (Shallow tree &#43; Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396 When `null`, the `tree_ah_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.tree_ah_config.new](#fn-vector_search_configtree_ah_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `vector_search_config` sub block.\n', args=[]),
    new(
      embedding_column,
      brute_force_config=null,
      crowding_column=null,
      distance_measure_type=null,
      embedding_dimension=null,
      filter_columns=null,
      tree_ah_config=null
    ):: std.prune(a={
      brute_force_config: brute_force_config,
      crowding_column: crowding_column,
      distance_measure_type: distance_measure_type,
      embedding_column: embedding_column,
      embedding_dimension: embedding_dimension,
      filter_columns: filter_columns,
      tree_ah_config: tree_ah_config,
    }),
    tree_ah_config:: {
      '#new':: d.fn(help='\n`google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.tree_ah_config.new` constructs a new object with attributes and blocks configured for the `tree_ah_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `leaf_node_embedding_count` (`string`): Number of embeddings on each leaf node. The default value is 1000 if not set. When `null`, the `leaf_node_embedding_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `tree_ah_config` sub block.\n', args=[]),
      new(
        leaf_node_embedding_count=null
      ):: std.prune(a={
        leaf_node_embedding_count: leaf_node_embedding_count,
      }),
    },
  },
  '#withBigQuerySource':: d.fn(help='`google-beta.list[obj].withBigQuerySource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the big_query_source field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withBigQuerySourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `big_query_source` field.\n', args=[]),
  withBigQuerySource(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          big_query_source: value,
        },
      },
    },
  },
  '#withBigQuerySourceMixin':: d.fn(help='`google-beta.list[obj].withBigQuerySourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the big_query_source field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBigQuerySource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `big_query_source` field.\n', args=[]),
  withBigQuerySourceMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          big_query_source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFeatureOnlineStore':: d.fn(help='`google-beta.string.withFeatureOnlineStore` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the feature_online_store field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `feature_online_store` field.\n', args=[]),
  withFeatureOnlineStore(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          feature_online_store: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google-beta.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSyncConfig':: d.fn(help='`google-beta.list[obj].withSyncConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sync_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withSyncConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sync_config` field.\n', args=[]),
  withSyncConfig(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          sync_config: value,
        },
      },
    },
  },
  '#withSyncConfigMixin':: d.fn(help='`google-beta.list[obj].withSyncConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the sync_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSyncConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `sync_config` field.\n', args=[]),
  withSyncConfigMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          sync_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVectorSearchConfig':: d.fn(help='`google-beta.list[obj].withVectorSearchConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vector_search_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withVectorSearchConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vector_search_config` field.\n', args=[]),
  withVectorSearchConfig(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          vector_search_config: value,
        },
      },
    },
  },
  '#withVectorSearchConfigMixin':: d.fn(help='`google-beta.list[obj].withVectorSearchConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vector_search_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withVectorSearchConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vector_search_config` field.\n', args=[]),
  withVectorSearchConfigMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store_featureview+: {
        [resourceLabel]+: {
          vector_search_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
