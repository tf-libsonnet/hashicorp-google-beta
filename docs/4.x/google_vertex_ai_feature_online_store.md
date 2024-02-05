---
permalink: /google_vertex_ai_feature_online_store/
---

# google_vertex_ai_feature_online_store

`google_vertex_ai_feature_online_store` represents the `google-beta_google_vertex_ai_feature_online_store` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBigtable()`](#fn-withbigtable)
* [`fn withBigtableMixin()`](#fn-withbigtablemixin)
* [`fn withDedicatedServingEndpoint()`](#fn-withdedicatedservingendpoint)
* [`fn withDedicatedServingEndpointMixin()`](#fn-withdedicatedservingendpointmixin)
* [`fn withEmbeddingManagement()`](#fn-withembeddingmanagement)
* [`fn withEmbeddingManagementMixin()`](#fn-withembeddingmanagementmixin)
* [`fn withForceDestroy()`](#fn-withforcedestroy)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withOptimized()`](#fn-withoptimized)
* [`fn withOptimizedMixin()`](#fn-withoptimizedmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj bigtable`](#obj-bigtable)
  * [`fn new()`](#fn-bigtablenew)
  * [`obj bigtable.auto_scaling`](#obj-bigtableauto_scaling)
    * [`fn new()`](#fn-bigtableauto_scalingnew)
* [`obj dedicated_serving_endpoint`](#obj-dedicated_serving_endpoint)
  * [`fn new()`](#fn-dedicated_serving_endpointnew)
  * [`obj dedicated_serving_endpoint.private_service_connect_config`](#obj-dedicated_serving_endpointprivate_service_connect_config)
    * [`fn new()`](#fn-dedicated_serving_endpointprivate_service_connect_confignew)
* [`obj embedding_management`](#obj-embedding_management)
  * [`fn new()`](#fn-embedding_managementnew)
* [`obj optimized`](#obj-optimized)
  * [`fn new()`](#fn-optimizednew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store.new` injects a new `google-beta_google_vertex_ai_feature_online_store` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_vertex_ai_feature_online_store.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_vertex_ai_feature_online_store` using the reference:

    $._ref.google-beta_google_vertex_ai_feature_online_store.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_vertex_ai_feature_online_store.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `force_destroy` (`bool`): If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted. When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels with user-defined metadata to organize your feature online stores.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of feature online store. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `bigtable` (`list[obj]`): Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When `null`, the `bigtable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.bigtable.new](#fn-bigtablenew) constructor.
  - `dedicated_serving_endpoint` (`list[obj]`): The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default. When `null`, the `dedicated_serving_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.new](#fn-dedicated_serving_endpointnew) constructor.
  - `embedding_management` (`list[obj]`): The settings for embedding management in FeatureOnlineStore. Embedding management can only be used with BigTable. When `null`, the `embedding_management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.embedding_management.new](#fn-embedding_managementnew) constructor.
  - `optimized` (`list[obj]`): Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore When `null`, the `optimized` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.optimized.new](#fn-optimizednew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_vertex_ai_feature_online_store.newAttrs` constructs a new object with attributes and blocks configured for the `google_vertex_ai_feature_online_store`
Terraform resource.

Unlike [google-beta.google_vertex_ai_feature_online_store.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `force_destroy` (`bool`): If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted. When `null`, the `force_destroy` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels with user-defined metadata to organize your feature online stores.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of feature online store. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `bigtable` (`list[obj]`): Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When `null`, the `bigtable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.bigtable.new](#fn-bigtablenew) constructor.
  - `dedicated_serving_endpoint` (`list[obj]`): The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default. When `null`, the `dedicated_serving_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.new](#fn-dedicated_serving_endpointnew) constructor.
  - `embedding_management` (`list[obj]`): The settings for embedding management in FeatureOnlineStore. Embedding management can only be used with BigTable. When `null`, the `embedding_management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.embedding_management.new](#fn-embedding_managementnew) constructor.
  - `optimized` (`list[obj]`): Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore When `null`, the `optimized` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.optimized.new](#fn-optimizednew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_vertex_ai_feature_online_store` resource into the root Terraform configuration.


### fn withBigtable

```ts
withBigtable()
```

`google-beta.list[obj].withBigtable` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bigtable field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withBigtableMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bigtable` field.


### fn withBigtableMixin

```ts
withBigtableMixin()
```

`google-beta.list[obj].withBigtableMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the bigtable field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withBigtable](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bigtable` field.


### fn withDedicatedServingEndpoint

```ts
withDedicatedServingEndpoint()
```

`google-beta.list[obj].withDedicatedServingEndpoint` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dedicated_serving_endpoint field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withDedicatedServingEndpointMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dedicated_serving_endpoint` field.


### fn withDedicatedServingEndpointMixin

```ts
withDedicatedServingEndpointMixin()
```

`google-beta.list[obj].withDedicatedServingEndpointMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dedicated_serving_endpoint field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDedicatedServingEndpoint](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dedicated_serving_endpoint` field.


### fn withEmbeddingManagement

```ts
withEmbeddingManagement()
```

`google-beta.list[obj].withEmbeddingManagement` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the embedding_management field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withEmbeddingManagementMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `embedding_management` field.


### fn withEmbeddingManagementMixin

```ts
withEmbeddingManagementMixin()
```

`google-beta.list[obj].withEmbeddingManagementMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the embedding_management field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withEmbeddingManagement](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `embedding_management` field.


### fn withForceDestroy

```ts
withForceDestroy()
```

`google-beta.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the force_destroy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `force_destroy` field.


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


### fn withOptimized

```ts
withOptimized()
```

`google-beta.list[obj].withOptimized` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the optimized field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withOptimizedMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `optimized` field.


### fn withOptimizedMixin

```ts
withOptimizedMixin()
```

`google-beta.list[obj].withOptimizedMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the optimized field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withOptimized](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `optimized` field.


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


## obj bigtable



### fn bigtable.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store.bigtable.new` constructs a new object with attributes and blocks configured for the `bigtable`
Terraform sub block.



**Args**:
  - `auto_scaling` (`list[obj]`): Autoscaling config applied to Bigtable Instance. When `null`, the `auto_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.bigtable.auto_scaling.new](#fn-bigtableauto_scalingnew) constructor.

**Returns**:
  - An attribute object that represents the `bigtable` sub block.


## obj bigtable.auto_scaling



### fn bigtable.auto_scaling.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store.bigtable.auto_scaling.new` constructs a new object with attributes and blocks configured for the `auto_scaling`
Terraform sub block.



**Args**:
  - `cpu_utilization_target` (`number`): A percentage of the cluster&#39;s CPU capacity. Can be from 10% to 80%. When a cluster&#39;s CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%. When `null`, the `cpu_utilization_target` field will be omitted from the resulting object.
  - `max_node_count` (`number`): The maximum number of nodes to scale up to. Must be greater than or equal to minNodeCount, and less than or equal to 10 times of &#39;minNodeCount&#39;.
  - `min_node_count` (`number`): The minimum number of nodes to scale down to. Must be greater than or equal to 1.

**Returns**:
  - An attribute object that represents the `auto_scaling` sub block.


## obj dedicated_serving_endpoint



### fn dedicated_serving_endpoint.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.new` constructs a new object with attributes and blocks configured for the `dedicated_serving_endpoint`
Terraform sub block.



**Args**:
  - `private_service_connect_config` (`list[obj]`): Private service connect config. When `null`, the `private_service_connect_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.private_service_connect_config.new](#fn-dedicated_serving_endpointprivate_service_connect_confignew) constructor.

**Returns**:
  - An attribute object that represents the `dedicated_serving_endpoint` sub block.


## obj dedicated_serving_endpoint.private_service_connect_config



### fn dedicated_serving_endpoint.private_service_connect_config.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store.dedicated_serving_endpoint.private_service_connect_config.new` constructs a new object with attributes and blocks configured for the `private_service_connect_config`
Terraform sub block.



**Args**:
  - `enable_private_service_connect` (`bool`): If set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  - `project_allowlist` (`list`): A list of Projects from which the forwarding rule will target the service attachment. When `null`, the `project_allowlist` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `private_service_connect_config` sub block.


## obj embedding_management



### fn embedding_management.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store.embedding_management.new` constructs a new object with attributes and blocks configured for the `embedding_management`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): Enable embedding management. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `embedding_management` sub block.


## obj optimized



### fn optimized.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store.optimized.new` constructs a new object with attributes and blocks configured for the `optimized`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `optimized` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_vertex_ai_feature_online_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
