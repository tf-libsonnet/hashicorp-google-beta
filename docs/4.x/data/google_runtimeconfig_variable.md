---
permalink: /data/google_runtimeconfig_variable/
---

# data.google_runtimeconfig_variable

`google_runtimeconfig_variable` represents the `google-beta_google_runtimeconfig_variable` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withParent()`](#fn-withparent)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_runtimeconfig_variable.new` injects a new `data_google-beta_google_runtimeconfig_variable` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_runtimeconfig_variable.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_runtimeconfig_variable` using the reference:

    $._ref.data_google-beta_google_runtimeconfig_variable.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_runtimeconfig_variable.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `name` (`string`): The name of the variable to manage. Note that variable names can be hierarchical using slashes (e.g. &#34;prod-variables/hostname&#34;).
  - `parent` (`string`): The name of the RuntimeConfig resource containing this variable.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_runtimeconfig_variable.newAttrs` constructs a new object with attributes and blocks configured for the `google_runtimeconfig_variable`
Terraform data source.

Unlike [google-beta.data.google_runtimeconfig_variable.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): The name of the variable to manage. Note that variable names can be hierarchical using slashes (e.g. &#34;prod-variables/hostname&#34;).
  - `parent` (`string`): The name of the RuntimeConfig resource containing this variable.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_runtimeconfig_variable` data source into the root Terraform configuration.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withParent

```ts
withParent()
```

`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the parent field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.
