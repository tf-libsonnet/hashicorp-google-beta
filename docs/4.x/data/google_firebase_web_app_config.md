---
permalink: /data/google_firebase_web_app_config/
---

# data.google_firebase_web_app_config

`google_firebase_web_app_config` represents the `google-beta_google_firebase_web_app_config` Terraform data source.

A Google Cloud Firebase web application configuration

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withProject()`](#fn-withproject)
* [`fn withWebAppId()`](#fn-withwebappid)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_firebase_web_app_config.new` injects a new `data_google-beta_google_firebase_web_app_config` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_firebase_web_app_config.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_firebase_web_app_config` using the reference:

    $._ref.data_google-beta_google_firebase_web_app_config.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_firebase_web_app_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `project` (`string`): The project id of the Firebase web App. When `null`, the `project` field will be omitted from the resulting object.
  - `web_app_id` (`string`): The id of the Firebase web App.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_firebase_web_app_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_web_app_config`
Terraform data source.

Unlike [google-beta.data.google_firebase_web_app_config.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project` (`string`): The project id of the Firebase web App. When `null`, the `project` field will be omitted from the resulting object.
  - `web_app_id` (`string`): The id of the Firebase web App.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_firebase_web_app_config` data source into the root Terraform configuration.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withWebAppId

```ts
withWebAppId()
```

`google-beta.string.withWebAppId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the web_app_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `web_app_id` field.
