---
permalink: /google_compute_machine_image/
---

# google_compute_machine_image

`google_compute_machine_image` represents the `google-beta_google_compute_machine_image` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withGuestFlush()`](#fn-withguestflush)
* [`fn withMachineImageEncryptionKey()`](#fn-withmachineimageencryptionkey)
* [`fn withMachineImageEncryptionKeyMixin()`](#fn-withmachineimageencryptionkeymixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSourceInstance()`](#fn-withsourceinstance)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj machine_image_encryption_key`](#obj-machine_image_encryption_key)
  * [`fn new()`](#fn-machine_image_encryption_keynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_machine_image.new` injects a new `google-beta_google_compute_machine_image` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_machine_image.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_machine_image` using the reference:

    $._ref.google-beta_google_compute_machine_image.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_machine_image.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A text description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `guest_flush` (`bool`): Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
Currently only supported on Windows instances using the Volume Shadow Copy Service (VSS). When `null`, the `guest_flush` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `source_instance` (`string`): The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  - `machine_image_encryption_key` (`list[obj]`): Encrypts the machine image using a customer-supplied encryption key.

After you encrypt a machine image with a customer-supplied key, you must
provide the same key if you use the machine image later (e.g. to create a
instance from the image) When `null`, the `machine_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_machine_image.machine_image_encryption_key.new](#fn-machine_image_encryption_keynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_machine_image.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_machine_image.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_machine_image`
Terraform resource.

Unlike [google-beta.google_compute_machine_image.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A text description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `guest_flush` (`bool`): Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
Currently only supported on Windows instances using the Volume Shadow Copy Service (VSS). When `null`, the `guest_flush` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `source_instance` (`string`): The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  - `machine_image_encryption_key` (`list[obj]`): Encrypts the machine image using a customer-supplied encryption key.

After you encrypt a machine image with a customer-supplied key, you must
provide the same key if you use the machine image later (e.g. to create a
instance from the image) When `null`, the `machine_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_machine_image.machine_image_encryption_key.new](#fn-machine_image_encryption_keynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_machine_image.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_machine_image` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withGuestFlush

```ts
withGuestFlush()
```

`google-beta.bool.withGuestFlush` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the guest_flush field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `guest_flush` field.


### fn withMachineImageEncryptionKey

```ts
withMachineImageEncryptionKey()
```

`google-beta.list[obj].withMachineImageEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the machine_image_encryption_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withMachineImageEncryptionKeyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `machine_image_encryption_key` field.


### fn withMachineImageEncryptionKeyMixin

```ts
withMachineImageEncryptionKeyMixin()
```

`google-beta.list[obj].withMachineImageEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the machine_image_encryption_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMachineImageEncryptionKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `machine_image_encryption_key` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSourceInstance

```ts
withSourceInstance()
```

`google-beta.string.withSourceInstance` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source_instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source_instance` field.


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


## obj machine_image_encryption_key



### fn machine_image_encryption_key.new

```ts
new()
```


`google-beta.google_compute_machine_image.machine_image_encryption_key.new` constructs a new object with attributes and blocks configured for the `machine_image_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The name of the encryption key that is stored in Google Cloud KMS. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.
  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `machine_image_encryption_key` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_compute_machine_image.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
