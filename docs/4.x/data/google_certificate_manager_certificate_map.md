---
permalink: /data/google_certificate_manager_certificate_map/
---

# data.google_certificate_manager_certificate_map

`google_certificate_manager_certificate_map` represents the `google-beta_google_certificate_manager_certificate_map` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_certificate_manager_certificate_map.new` injects a new `data_google-beta_google_certificate_manager_certificate_map` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_certificate_manager_certificate_map.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_certificate_manager_certificate_map` using the reference:

    $._ref.data_google-beta_google_certificate_manager_certificate_map.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_certificate_manager_certificate_map.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `name` (`string`): A user-defined name of the Certificate Map. Certificate Map names must be unique
globally and match the pattern &#39;projects/*/locations/*/certificateMaps/*&#39;.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_certificate_manager_certificate_map.newAttrs` constructs a new object with attributes and blocks configured for the `google_certificate_manager_certificate_map`
Terraform data source.

Unlike [google-beta.data.google_certificate_manager_certificate_map.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): A user-defined name of the Certificate Map. Certificate Map names must be unique
globally and match the pattern &#39;projects/*/locations/*/certificateMaps/*&#39;.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_certificate_manager_certificate_map` data source into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.
