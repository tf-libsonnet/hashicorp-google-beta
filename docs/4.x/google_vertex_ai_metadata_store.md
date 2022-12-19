---
permalink: /google_vertex_ai_metadata_store/
---

# google_vertex_ai_metadata_store

`google_vertex_ai_metadata_store` represents the `google-beta_google_vertex_ai_metadata_store` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEncryptionSpec()`](#fn-withencryptionspec)
* [`fn withEncryptionSpecMixin()`](#fn-withencryptionspecmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj encryption_spec`](#obj-encryption_spec)
  * [`fn new()`](#fn-encryption_specnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_vertex_ai_metadata_store.new` injects a new `google-beta_google_vertex_ai_metadata_store` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_vertex_ai_metadata_store.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_vertex_ai_metadata_store` using the reference:

    $._ref.google-beta_google_vertex_ai_metadata_store.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_vertex_ai_metadata_store.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Description of the MetadataStore. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the Metadata Store. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `encryption_spec` (`list[obj]`): Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_metadata_store.encryption_spec.new](#fn-googlevertexaimetadatastoreencryptionspecnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_metadata_store.timeouts.new](#fn-googlevertexaimetadatastoretimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_vertex_ai_metadata_store.newAttrs` constructs a new object with attributes and blocks configured for the `google_vertex_ai_metadata_store`
Terraform resource.

Unlike [google-beta.google_vertex_ai_metadata_store.new](#fn-googlevertexaimetadatastorenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Description of the MetadataStore. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the Metadata Store. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `encryption_spec` (`list[obj]`): Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_metadata_store.encryption_spec.new](#fn-googlevertexaimetadatastoreencryptionspecnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_vertex_ai_metadata_store.timeouts.new](#fn-googlevertexaimetadatastoretimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_vertex_ai_metadata_store` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google-beta.google_vertex_ai_metadata_store.withDescription` constructs a mixin object that can be merged into the `google_vertex_ai_metadata_store`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withEncryptionSpec

```ts
withEncryptionSpec()
```

`google-beta.google_vertex_ai_metadata_store.withEncryptionSpec` constructs a mixin object that can be merged into the `google_vertex_ai_metadata_store`
Terraform resource block to set or update the encryption_spec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `encryption_spec` field.


### fn withEncryptionSpecMixin

```ts
withEncryptionSpecMixin()
```

`google-beta.google_vertex_ai_metadata_store.withEncryptionSpecMixin` constructs a mixin object that can be merged into the `google_vertex_ai_metadata_store`
Terraform resource block to set or update the encryption_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.google_vertex_ai_metadata_store.withEncryptionSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `encryption_spec` field.


### fn withName

```ts
withName()
```

`google-beta.google_vertex_ai_metadata_store.withName` constructs a mixin object that can be merged into the `google_vertex_ai_metadata_store`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google-beta.google_vertex_ai_metadata_store.withProject` constructs a mixin object that can be merged into the `google_vertex_ai_metadata_store`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google-beta.google_vertex_ai_metadata_store.withRegion` constructs a mixin object that can be merged into the `google_vertex_ai_metadata_store`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google-beta.google_vertex_ai_metadata_store.withTimeouts` constructs a mixin object that can be merged into the `google_vertex_ai_metadata_store`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google-beta.google_vertex_ai_metadata_store.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_vertex_ai_metadata_store`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google-beta.google_vertex_ai_metadata_store.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj encryption_spec



### fn encryption_spec.new

```ts
new()
```


`google-beta.google_vertex_ai_metadata_store.encryption_spec.new` constructs a new object with attributes and blocks configured for the `encryption_spec`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created. When `null`, the `kms_key_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_spec` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_vertex_ai_metadata_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
