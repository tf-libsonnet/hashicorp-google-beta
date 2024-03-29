---
permalink: /data/google_iap_app_engine_version_iam_policy/
---

# data.google_iap_app_engine_version_iam_policy

`google_iap_app_engine_version_iam_policy` represents the `google-beta_google_iap_app_engine_version_iam_policy` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppId()`](#fn-withappid)
* [`fn withProject()`](#fn-withproject)
* [`fn withService()`](#fn-withservice)
* [`fn withVersionId()`](#fn-withversionid)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_iap_app_engine_version_iam_policy.new` injects a new `data_google-beta_google_iap_app_engine_version_iam_policy` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_iap_app_engine_version_iam_policy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_iap_app_engine_version_iam_policy` using the reference:

    $._ref.data_google-beta_google_iap_app_engine_version_iam_policy.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_iap_app_engine_version_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `app_id` (`string`): Set the `app_id` field on the resulting data source block.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): Set the `service` field on the resulting data source block.
  - `version_id` (`string`): Set the `version_id` field on the resulting data source block.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_iap_app_engine_version_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_iap_app_engine_version_iam_policy`
Terraform data source.

Unlike [google-beta.data.google_iap_app_engine_version_iam_policy.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `app_id` (`string`): Set the `app_id` field on the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): Set the `service` field on the resulting object.
  - `version_id` (`string`): Set the `version_id` field on the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_iap_app_engine_version_iam_policy` data source into the root Terraform configuration.


### fn withAppId

```ts
withAppId()
```

`google-beta.string.withAppId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the app_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `app_id` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withService

```ts
withService()
```

`google-beta.string.withService` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the service field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service` field.


### fn withVersionId

```ts
withVersionId()
```

`google-beta.string.withVersionId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the version_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version_id` field.
