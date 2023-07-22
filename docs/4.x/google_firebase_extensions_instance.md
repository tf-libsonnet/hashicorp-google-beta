---
permalink: /google_firebase_extensions_instance/
---

# google_firebase_extensions_instance

`google_firebase_extensions_instance` represents the `google-beta_google_firebase_extensions_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withInstanceId()`](#fn-withinstanceid)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj config`](#obj-config)
  * [`fn new()`](#fn-confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_firebase_extensions_instance.new` injects a new `google-beta_google_firebase_extensions_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_firebase_extensions_instance.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_firebase_extensions_instance` using the reference:

    $._ref.google-beta_google_firebase_extensions_instance.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_firebase_extensions_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `instance_id` (`string`): The ID to use for the Extension Instance, which will become the final
component of the instance&#39;s name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The current Config of the Extension Instance. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_extensions_instance.config.new](#fn-confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_extensions_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_firebase_extensions_instance.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_extensions_instance`
Terraform resource.

Unlike [google-beta.google_firebase_extensions_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `instance_id` (`string`): The ID to use for the Extension Instance, which will become the final
component of the instance&#39;s name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The current Config of the Extension Instance. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_extensions_instance.config.new](#fn-confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_extensions_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_extensions_instance` resource into the root Terraform configuration.


### fn withConfig

```ts
withConfig()
```

`google-beta.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withConfigMixin

```ts
withConfigMixin()
```

`google-beta.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withInstanceId

```ts
withInstanceId()
```

`google-beta.string.withInstanceId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_id` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj config



### fn config.new

```ts
new()
```


`google-beta.google_firebase_extensions_instance.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `allowed_event_types` (`list`): List of extension events selected by consumer that extension is allowed to
emit, identified by their types. When `null`, the `allowed_event_types` field will be omitted from the resulting object.
  - `eventarc_channel` (`string`): Fully qualified Eventarc resource name that consumers should use for event triggers. When `null`, the `eventarc_channel` field will be omitted from the resulting object.
  - `extension_ref` (`string`): The ref of the Extension from the Registry (e.g. publisher-id/awesome-extension)
  - `extension_version` (`string`): The version of the Extension from the Registry (e.g. 1.0.3). If left blank, latest is assumed. When `null`, the `extension_version` field will be omitted from the resulting object.
  - `params` (`obj`): Environment variables that may be configured for the Extension
  - `system_params` (`obj`): Params whose values are only available at deployment time.
Unlike other params, these will not be set as environment variables on
functions. When `null`, the `system_params` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_firebase_extensions_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
