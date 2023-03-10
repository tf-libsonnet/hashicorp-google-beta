---
permalink: /google_kms_crypto_key_version/
---

# google_kms_crypto_key_version

`google_kms_crypto_key_version` represents the `google-beta_google_kms_crypto_key_version` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCryptoKey()`](#fn-withcryptokey)
* [`fn withState()`](#fn-withstate)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_kms_crypto_key_version.new` injects a new `google-beta_google_kms_crypto_key_version` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_kms_crypto_key_version.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_kms_crypto_key_version` using the reference:

    $._ref.google-beta_google_kms_crypto_key_version.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_kms_crypto_key_version.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `crypto_key` (`string`): The name of the cryptoKey associated with the CryptoKeyVersions.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}&#39;&#39;
  - `state` (`string`): The current state of the CryptoKeyVersion. Possible values: [&#34;PENDING_GENERATION&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;, &#34;DESTROYED&#34;, &#34;DESTROY_SCHEDULED&#34;, &#34;PENDING_IMPORT&#34;, &#34;IMPORT_FAILED&#34;] When `null`, the `state` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_kms_crypto_key_version.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_kms_crypto_key_version.newAttrs` constructs a new object with attributes and blocks configured for the `google_kms_crypto_key_version`
Terraform resource.

Unlike [google-beta.google_kms_crypto_key_version.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `crypto_key` (`string`): The name of the cryptoKey associated with the CryptoKeyVersions.
Format: &#39;&#39;projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}&#39;&#39;
  - `state` (`string`): The current state of the CryptoKeyVersion. Possible values: [&#34;PENDING_GENERATION&#34;, &#34;ENABLED&#34;, &#34;DISABLED&#34;, &#34;DESTROYED&#34;, &#34;DESTROY_SCHEDULED&#34;, &#34;PENDING_IMPORT&#34;, &#34;IMPORT_FAILED&#34;] When `null`, the `state` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_kms_crypto_key_version.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_kms_crypto_key_version` resource into the root Terraform configuration.


### fn withCryptoKey

```ts
withCryptoKey()
```

`google-beta.string.withCryptoKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the crypto_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `crypto_key` field.


### fn withState

```ts
withState()
```

`google-beta.string.withState` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `state` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_kms_crypto_key_version.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
