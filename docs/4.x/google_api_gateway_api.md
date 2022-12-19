---
permalink: /google_api_gateway_api/
---

# google_api_gateway_api

`google_api_gateway_api` represents the `google-beta_google_api_gateway_api` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApiId()`](#fn-withapiid)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withManagedService()`](#fn-withmanagedservice)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_api_gateway_api.new` injects a new `google-beta_google_api_gateway_api` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_api_gateway_api.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_api_gateway_api` using the reference:

    $._ref.google-beta_google_api_gateway_api.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_api_gateway_api.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `api_id` (`string`): Identifier to assign to the API. Must be unique within scope of the parent resource(project)
  - `display_name` (`string`): A user-visible name for the API. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `managed_service` (`string`): Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed).
If not specified, a new Service will automatically be created in the same project as this API. When `null`, the `managed_service` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api.timeouts.new](#fn-googleapigatewayapitimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_api_gateway_api.newAttrs` constructs a new object with attributes and blocks configured for the `google_api_gateway_api`
Terraform resource.

Unlike [google-beta.google_api_gateway_api.new](#fn-googleapigatewayapinew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `api_id` (`string`): Identifier to assign to the API. Must be unique within scope of the parent resource(project)
  - `display_name` (`string`): A user-visible name for the API. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `managed_service` (`string`): Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed).
If not specified, a new Service will automatically be created in the same project as this API. When `null`, the `managed_service` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api.timeouts.new](#fn-googleapigatewayapitimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_api_gateway_api` resource into the root Terraform configuration.


### fn withApiId

```ts
withApiId()
```

`google-beta.google_api_gateway_api.withApiId` constructs a mixin object that can be merged into the `google_api_gateway_api`
Terraform resource block to set or update the api_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `api_id` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google-beta.google_api_gateway_api.withDisplayName` constructs a mixin object that can be merged into the `google_api_gateway_api`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.google_api_gateway_api.withLabels` constructs a mixin object that can be merged into the `google_api_gateway_api`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withManagedService

```ts
withManagedService()
```

`google-beta.google_api_gateway_api.withManagedService` constructs a mixin object that can be merged into the `google_api_gateway_api`
Terraform resource block to set or update the managed_service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `managed_service` field.


### fn withProject

```ts
withProject()
```

`google-beta.google_api_gateway_api.withProject` constructs a mixin object that can be merged into the `google_api_gateway_api`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google-beta.google_api_gateway_api.withTimeouts` constructs a mixin object that can be merged into the `google_api_gateway_api`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google-beta.google_api_gateway_api.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_api_gateway_api`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google-beta.google_api_gateway_api.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_api_gateway_api.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
