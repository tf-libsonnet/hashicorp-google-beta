---
permalink: /google_backup_dr_management_server/
---

# google_backup_dr_management_server

`google_backup_dr_management_server` represents the `google-beta_google_backup_dr_management_server` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetworks()`](#fn-withnetworks)
* [`fn withNetworksMixin()`](#fn-withnetworksmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj networks`](#obj-networks)
  * [`fn new()`](#fn-networksnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_backup_dr_management_server.new` injects a new `google-beta_google_backup_dr_management_server` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_backup_dr_management_server.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_backup_dr_management_server` using the reference:

    $._ref.google-beta_google_backup_dr_management_server.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_backup_dr_management_server.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `location` (`string`): The location for the management server (management console)
  - `name` (`string`): The name of management server (management console)
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of management server (management console). Default value: &#34;BACKUP_RESTORE&#34; Possible values: [&#34;BACKUP_RESTORE&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `networks` (`list[obj]`): Network details to create management server (management console). When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_backup_dr_management_server.networks.new](#fn-networksnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_backup_dr_management_server.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_backup_dr_management_server.newAttrs` constructs a new object with attributes and blocks configured for the `google_backup_dr_management_server`
Terraform resource.

Unlike [google-beta.google_backup_dr_management_server.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): The location for the management server (management console)
  - `name` (`string`): The name of management server (management console)
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of management server (management console). Default value: &#34;BACKUP_RESTORE&#34; Possible values: [&#34;BACKUP_RESTORE&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `networks` (`list[obj]`): Network details to create management server (management console). When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_backup_dr_management_server.networks.new](#fn-networksnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_backup_dr_management_server.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_backup_dr_management_server` resource into the root Terraform configuration.


### fn withLocation

```ts
withLocation()
```

`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetworks

```ts
withNetworks()
```

`google-beta.list[obj].withNetworks` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networks field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withNetworksMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networks` field.


### fn withNetworksMixin

```ts
withNetworksMixin()
```

`google-beta.list[obj].withNetworksMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networks field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworks](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networks` field.


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


### fn withType

```ts
withType()
```

`google-beta.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj networks



### fn networks.new

```ts
new()
```


`google-beta.google_backup_dr_management_server.networks.new` constructs a new object with attributes and blocks configured for the `networks`
Terraform sub block.



**Args**:
  - `network` (`string`): Network with format &#39;projects/{{project_id}}/global/networks/{{network_id}}&#39;
  - `peering_mode` (`string`): Type of Network peeringMode Default value: &#34;PRIVATE_SERVICE_ACCESS&#34; Possible values: [&#34;PRIVATE_SERVICE_ACCESS&#34;] When `null`, the `peering_mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `networks` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_backup_dr_management_server.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
