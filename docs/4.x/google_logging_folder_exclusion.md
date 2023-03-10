---
permalink: /google_logging_folder_exclusion/
---

# google_logging_folder_exclusion

`google_logging_folder_exclusion` represents the `google-beta_google_logging_folder_exclusion` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withFolder()`](#fn-withfolder)
* [`fn withName()`](#fn-withname)

## Fields

### fn new

```ts
new()
```


`google-beta.google_logging_folder_exclusion.new` injects a new `google-beta_google_logging_folder_exclusion` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_logging_folder_exclusion.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_logging_folder_exclusion` using the reference:

    $._ref.google-beta_google_logging_folder_exclusion.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_logging_folder_exclusion.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A human-readable description. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether this exclusion rule should be disabled or not. This defaults to false. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  - `folder` (`string`): Set the `folder` field on the resulting resource block.
  - `name` (`string`): The name of the logging exclusion.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_logging_folder_exclusion.newAttrs` constructs a new object with attributes and blocks configured for the `google_logging_folder_exclusion`
Terraform resource.

Unlike [google-beta.google_logging_folder_exclusion.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A human-readable description. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether this exclusion rule should be disabled or not. This defaults to false. When `null`, the `disabled` field will be omitted from the resulting object.
  - `filter` (`string`): The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  - `folder` (`string`): Set the `folder` field on the resulting object.
  - `name` (`string`): The name of the logging exclusion.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_logging_folder_exclusion` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisabled

```ts
withDisabled()
```

`google-beta.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withFilter

```ts
withFilter()
```

`google-beta.string.withFilter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `filter` field.


### fn withFolder

```ts
withFolder()
```

`google-beta.string.withFolder` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the folder field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `folder` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.
