---
permalink: /data/google_cloud_asset_resources_search_all/
---

# data.google_cloud_asset_resources_search_all

`google_cloud_asset_resources_search_all` represents the `google-beta_google_cloud_asset_resources_search_all` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAssetTypes()`](#fn-withassettypes)
* [`fn withQuery()`](#fn-withquery)
* [`fn withScope()`](#fn-withscope)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_cloud_asset_resources_search_all.new` injects a new `data_google-beta_google_cloud_asset_resources_search_all` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_cloud_asset_resources_search_all.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_cloud_asset_resources_search_all` using the reference:

    $._ref.data_google-beta_google_cloud_asset_resources_search_all.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_cloud_asset_resources_search_all.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `asset_types` (`list`):  When `null`, the `asset_types` field will be omitted from the resulting object.
  - `query` (`string`):  When `null`, the `query` field will be omitted from the resulting object.
  - `scope` (`string`): 

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_cloud_asset_resources_search_all.newAttrs` constructs a new object with attributes and blocks configured for the `google_cloud_asset_resources_search_all`
Terraform data source.

Unlike [google-beta.data.google_cloud_asset_resources_search_all.new](#fn-googlecloudassetresourcessearchallnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `asset_types` (`list`):  When `null`, the `asset_types` field will be omitted from the resulting object.
  - `query` (`string`):  When `null`, the `query` field will be omitted from the resulting object.
  - `scope` (`string`): 

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_cloud_asset_resources_search_all` data source into the root Terraform configuration.


### fn withAssetTypes

```ts
withAssetTypes()
```

`google-beta.google_cloud_asset_resources_search_all.withAssetTypes` constructs a mixin object that can be merged into the `google_cloud_asset_resources_search_all`
Terraform data source block to set or update the asset_types field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `asset_types` field.


### fn withQuery

```ts
withQuery()
```

`google-beta.google_cloud_asset_resources_search_all.withQuery` constructs a mixin object that can be merged into the `google_cloud_asset_resources_search_all`
Terraform data source block to set or update the query field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `query` field.


### fn withScope

```ts
withScope()
```

`google-beta.google_cloud_asset_resources_search_all.withScope` constructs a mixin object that can be merged into the `google_cloud_asset_resources_search_all`
Terraform data source block to set or update the scope field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `scope` field.
