---
permalink: /google_tpu_v2_vm/
---

# google_tpu_v2_vm

`google_tpu_v2_vm` represents the `google-beta_google_tpu_v2_vm` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAcceleratorType()`](#fn-withacceleratortype)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRuntimeVersion()`](#fn-withruntimeversion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_tpu_v2_vm.new` injects a new `google-beta_google_tpu_v2_vm` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_tpu_v2_vm.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_tpu_v2_vm` using the reference:

    $._ref.google-beta_google_tpu_v2_vm.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_tpu_v2_vm.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `accelerator_type` (`string`): TPU accelerator type for the TPU. If not specified, this defaults to &#39;v2-8&#39;. When `null`, the `accelerator_type` field will be omitted from the resulting object.
  - `description` (`string`): Text description of the TPU. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The immutable name of the TPU.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `runtime_version` (`string`): Runtime version for the TPU.
  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_tpu_v2_vm.newAttrs` constructs a new object with attributes and blocks configured for the `google_tpu_v2_vm`
Terraform resource.

Unlike [google-beta.google_tpu_v2_vm.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `accelerator_type` (`string`): TPU accelerator type for the TPU. If not specified, this defaults to &#39;v2-8&#39;. When `null`, the `accelerator_type` field will be omitted from the resulting object.
  - `description` (`string`): Text description of the TPU. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The immutable name of the TPU.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `runtime_version` (`string`): Runtime version for the TPU.
  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_tpu_v2_vm` resource into the root Terraform configuration.


### fn withAcceleratorType

```ts
withAcceleratorType()
```

`google-beta.string.withAcceleratorType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the accelerator_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `accelerator_type` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withRuntimeVersion

```ts
withRuntimeVersion()
```

`google-beta.string.withRuntimeVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the runtime_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `runtime_version` field.


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


### fn withZone

```ts
withZone()
```

`google-beta.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_tpu_v2_vm.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
