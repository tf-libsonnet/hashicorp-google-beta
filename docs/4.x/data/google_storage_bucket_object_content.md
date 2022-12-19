---
permalink: /data/google_storage_bucket_object_content/
---

# data.google_storage_bucket_object_content

`google_storage_bucket_object_content` represents the `google-beta_google_storage_bucket_object_content` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withContent()`](#fn-withcontent)
* [`fn withName()`](#fn-withname)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_storage_bucket_object_content.new` injects a new `data_google-beta_google_storage_bucket_object_content` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_storage_bucket_object_content.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_storage_bucket_object_content` using the reference:

    $._ref.data_google-beta_google_storage_bucket_object_content.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_storage_bucket_object_content.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `bucket` (`string`): The name of the containing bucket.
  - `content` (`string`): Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output. When `null`, the `content` field will be omitted from the resulting object.
  - `name` (`string`): The name of the object. If you&#39;re interpolating the name of this object, see output_name instead.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_storage_bucket_object_content.newAttrs` constructs a new object with attributes and blocks configured for the `google_storage_bucket_object_content`
Terraform data source.

Unlike [google-beta.data.google_storage_bucket_object_content.new](#fn-googlestoragebucketobjectcontentnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): The name of the containing bucket.
  - `content` (`string`): Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output. When `null`, the `content` field will be omitted from the resulting object.
  - `name` (`string`): The name of the object. If you&#39;re interpolating the name of this object, see output_name instead.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_storage_bucket_object_content` data source into the root Terraform configuration.


### fn withBucket

```ts
withBucket()
```

`google-beta.string.withBucket` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the bucket field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket` field.


### fn withContent

```ts
withContent()
```

`google-beta.string.withContent` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the content field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.
