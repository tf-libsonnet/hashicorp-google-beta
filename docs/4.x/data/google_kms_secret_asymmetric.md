---
permalink: /data/google_kms_secret_asymmetric/
---

# data.google_kms_secret_asymmetric

`google_kms_secret_asymmetric` represents the `google-beta_google_kms_secret_asymmetric` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCiphertext()`](#fn-withciphertext)
* [`fn withCrc32()`](#fn-withcrc32)
* [`fn withCryptoKeyVersion()`](#fn-withcryptokeyversion)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_kms_secret_asymmetric.new` injects a new `data_google-beta_google_kms_secret_asymmetric` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_kms_secret_asymmetric.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_kms_secret_asymmetric` using the reference:

    $._ref.data_google-beta_google_kms_secret_asymmetric.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_kms_secret_asymmetric.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `ciphertext` (`string`): The public key encrypted ciphertext in base64 encoding
  - `crc32` (`string`): The crc32 checksum of the ciphertext, hexadecimal encoding. If not specified, it will be computed When `null`, the `crc32` field will be omitted from the resulting object.
  - `crypto_key_version` (`string`): The fully qualified KMS crypto key version name

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_kms_secret_asymmetric.newAttrs` constructs a new object with attributes and blocks configured for the `google_kms_secret_asymmetric`
Terraform data source.

Unlike [google-beta.data.google_kms_secret_asymmetric.new](#fn-google_kms_secret_asymmetricnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `ciphertext` (`string`): The public key encrypted ciphertext in base64 encoding
  - `crc32` (`string`): The crc32 checksum of the ciphertext, hexadecimal encoding. If not specified, it will be computed When `null`, the `crc32` field will be omitted from the resulting object.
  - `crypto_key_version` (`string`): The fully qualified KMS crypto key version name

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_kms_secret_asymmetric` data source into the root Terraform configuration.


### fn withCiphertext

```ts
withCiphertext()
```

`google-beta.string.withCiphertext` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the ciphertext field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ciphertext` field.


### fn withCrc32

```ts
withCrc32()
```

`google-beta.string.withCrc32` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the crc32 field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `crc32` field.


### fn withCryptoKeyVersion

```ts
withCryptoKeyVersion()
```

`google-beta.string.withCryptoKeyVersion` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the crypto_key_version field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `crypto_key_version` field.
