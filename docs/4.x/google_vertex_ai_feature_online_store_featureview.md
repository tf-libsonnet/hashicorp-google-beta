---
permalink: /google_vertex_ai_feature_online_store_featureview/
---

# google_vertex_ai_feature_online_store_featureview

`google_vertex_ai_feature_online_store_featureview` represents the `google-beta_google_vertex_ai_feature_online_store_featureview` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBigQuerySource()`](#fn-withbigquerysource)
* [`fn withBigQuerySourceMixin()`](#fn-withbigquerysourcemixin)
* [`fn withFeatureOnlineStore()`](#fn-withfeatureonlinestore)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSyncConfig()`](#fn-withsyncconfig)
* [`fn withSyncConfigMixin()`](#fn-withsyncconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVectorSearchConfig()`](#fn-withvectorsearchconfig)
* [`fn withVectorSearchConfigMixin()`](#fn-withvectorsearchconfigmixin)
* [`obj big_query_source`](#obj-big_query_source)
  * [`fn new()`](#fn-big_query_sourcenew)
* [`obj sync_config`](#obj-sync_config)
  * [`fn new()`](#fn-sync_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vector_search_config`](#obj-vector_search_config)
  * [`fn new()`](#fn-vector_search_confignew)
  * [`obj vector_search_config.brute_force_config`](#obj-vector_search_configbrute_force_config)
    * [`fn new()`](#fn-vector_search_configbrute_force_confignew)
  * [`obj vector_search_config.tree_ah_config`](#obj-vector_search_configtree_ah_config)
    * [`fn new()`](#fn-vector_search_configtree_ah_confignew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store_featureview.new` injects a new `google-beta_google_vertex_ai_feature_online_store_featureview` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_vertex_ai_feature_online_store_featureview.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_vertex_ai_feature_online_store_featureview` using the reference:

    $._ref.google-beta_google_vertex_ai_feature_online_store_featureview.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_vertex_ai_feature_online_store_featureview.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `feature_online_store` (`string`): The name of the FeatureOnlineStore to use for the featureview.
  - `labels` (`obj`): A set of key/value label pairs to assign to this FeatureView.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region for the resource. It should be the same as the featureonlinestore region.
  - `big_query_source` (`list[obj]`): Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.big_query_source.new](#fn-big_query_sourcenew) constructor.
  - `sync_config` (`list[obj]`): Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. When `null`, the `sync_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.sync_config.new](#fn-sync_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.timeouts.new](#fn-timeoutsnew) constructor.
  - `vector_search_config` (`list[obj]`): Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving. When `null`, the `vector_search_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.new](#fn-vector_search_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_vertex_ai_feature_online_store_featureview.newAttrs` constructs a new object with attributes and blocks configured for the `google_vertex_ai_feature_online_store_featureview`
Terraform resource.

Unlike [google-beta.google_vertex_ai_feature_online_store_featureview.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `feature_online_store` (`string`): The name of the FeatureOnlineStore to use for the featureview.
  - `labels` (`obj`): A set of key/value label pairs to assign to this FeatureView.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region for the resource. It should be the same as the featureonlinestore region.
  - `big_query_source` (`list[obj]`): Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. When `null`, the `big_query_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.big_query_source.new](#fn-big_query_sourcenew) constructor.
  - `sync_config` (`list[obj]`): Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. When `null`, the `sync_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.sync_config.new](#fn-sync_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.timeouts.new](#fn-timeoutsnew) constructor.
  - `vector_search_config` (`list[obj]`): Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving. When `null`, the `vector_search_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.new](#fn-vector_search_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_vertex_ai_feature_online_store_featureview` resource into the root Terraform configuration.


### fn withBigQuerySource

```ts
withBigQuerySource()
```

`google-beta.list[obj].withBigQuerySource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the big_query_source field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withBigQuerySourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `big_query_source` field.


### fn withBigQuerySourceMixin

```ts
withBigQuerySourceMixin()
```

`google-beta.list[obj].withBigQuerySourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the big_query_source field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBigQuerySource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `big_query_source` field.


### fn withFeatureOnlineStore

```ts
withFeatureOnlineStore()
```

`google-beta.string.withFeatureOnlineStore` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the feature_online_store field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `feature_online_store` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withSyncConfig

```ts
withSyncConfig()
```

`google-beta.list[obj].withSyncConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sync_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withSyncConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sync_config` field.


### fn withSyncConfigMixin

```ts
withSyncConfigMixin()
```

`google-beta.list[obj].withSyncConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the sync_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSyncConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `sync_config` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withVectorSearchConfig

```ts
withVectorSearchConfig()
```

`google-beta.list[obj].withVectorSearchConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vector_search_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withVectorSearchConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vector_search_config` field.


### fn withVectorSearchConfigMixin

```ts
withVectorSearchConfigMixin()
```

`google-beta.list[obj].withVectorSearchConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vector_search_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withVectorSearchConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vector_search_config` field.


## obj big_query_source



### fn big_query_source.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store_featureview.big_query_source.new` constructs a new object with attributes and blocks configured for the `big_query_source`
Terraform sub block.



**Args**:
  - `entity_id_columns` (`list`): Columns to construct entityId / row keys. Start by supporting 1 only.
  - `uri` (`string`): The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.

**Returns**:
  - An attribute object that represents the `big_query_source` sub block.


## obj sync_config



### fn sync_config.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store_featureview.sync_config.new` constructs a new object with attributes and blocks configured for the `sync_config`
Terraform sub block.



**Args**:
  - `cron` (`string`): Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: &#34;CRON_TZ=${IANA_TIME_ZONE}&#34; or &#34;TZ=${IANA_TIME_ZONE}&#34;. When `null`, the `cron` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `sync_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store_featureview.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vector_search_config



### fn vector_search_config.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.new` constructs a new object with attributes and blocks configured for the `vector_search_config`
Terraform sub block.



**Args**:
  - `crowding_column` (`string`): Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k&#39; of the k neighbors returned have the same value of crowdingAttribute. When `null`, the `crowding_column` field will be omitted from the resulting object.
  - `distance_measure_type` (`string`): The distance measure used in nearest neighbor search.
For details on allowed values, see the [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.featureOnlineStores.featureViews#DistanceMeasureType). Possible values: [&#34;SQUARED_L2_DISTANCE&#34;, &#34;COSINE_DISTANCE&#34;, &#34;DOT_PRODUCT_DISTANCE&#34;] When `null`, the `distance_measure_type` field will be omitted from the resulting object.
  - `embedding_column` (`string`): Column of embedding. This column contains the source data to create index for vector search.
  - `embedding_dimension` (`number`): The number of dimensions of the input embedding. When `null`, the `embedding_dimension` field will be omitted from the resulting object.
  - `filter_columns` (`list`): Columns of features that are used to filter vector search results. When `null`, the `filter_columns` field will be omitted from the resulting object.
  - `brute_force_config` (`list[obj]`): Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search. When `null`, the `brute_force_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.brute_force_config.new](#fn-vector_search_configbrute_force_confignew) constructor.
  - `tree_ah_config` (`list[obj]`): Configuration options for the tree-AH algorithm (Shallow tree &#43; Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396 When `null`, the `tree_ah_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.tree_ah_config.new](#fn-vector_search_configtree_ah_confignew) constructor.

**Returns**:
  - An attribute object that represents the `vector_search_config` sub block.


## obj vector_search_config.brute_force_config



### fn vector_search_config.brute_force_config.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.brute_force_config.new` constructs a new object with attributes and blocks configured for the `brute_force_config`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `brute_force_config` sub block.


## obj vector_search_config.tree_ah_config



### fn vector_search_config.tree_ah_config.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store_featureview.vector_search_config.tree_ah_config.new` constructs a new object with attributes and blocks configured for the `tree_ah_config`
Terraform sub block.



**Args**:
  - `leaf_node_embedding_count` (`string`): Number of embeddings on each leaf node. The default value is 1000 if not set. When `null`, the `leaf_node_embedding_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `tree_ah_config` sub block.
