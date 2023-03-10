---
permalink: /data/google_kms_secret/
---

# data.google_kms_secret

`google_kms_secret` represents the `google-beta_google_kms_secret` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdditionalAuthenticatedData()`](#fn-withadditionalauthenticateddata)
* [`fn withCiphertext()`](#fn-withciphertext)
* [`fn withCryptoKey()`](#fn-withcryptokey)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_kms_secret.new` injects a new `data_google-beta_google_kms_secret` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_kms_secret.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_kms_secret` using the reference:

    $._ref.data_google-beta_google_kms_secret.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_kms_secret.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `additional_authenticated_data` (`string`): Set the `additional_authenticated_data` field on the resulting data source block. When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.
  - `ciphertext` (`string`): Set the `ciphertext` field on the resulting data source block.
  - `crypto_key` (`string`): Set the `crypto_key` field on the resulting data source block.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_kms_secret.newAttrs` constructs a new object with attributes and blocks configured for the `google_kms_secret`
Terraform data source.

Unlike [google-beta.data.google_kms_secret.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `additional_authenticated_data` (`string`): Set the `additional_authenticated_data` field on the resulting object. When `null`, the `additional_authenticated_data` field will be omitted from the resulting object.
  - `ciphertext` (`string`): Set the `ciphertext` field on the resulting object.
  - `crypto_key` (`string`): Set the `crypto_key` field on the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_kms_secret` data source into the root Terraform configuration.


### fn withAdditionalAuthenticatedData

```ts
withAdditionalAuthenticatedData()
```

`google-beta.string.withAdditionalAuthenticatedData` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the additional_authenticated_data field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `additional_authenticated_data` field.


### fn withCiphertext

```ts
withCiphertext()
```

`google-beta.string.withCiphertext` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the ciphertext field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ciphertext` field.


### fn withCryptoKey

```ts
withCryptoKey()
```

`google-beta.string.withCryptoKey` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the crypto_key field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `crypto_key` field.
