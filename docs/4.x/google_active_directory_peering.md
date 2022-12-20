---
permalink: /google_active_directory_peering/
---

# google_active_directory_peering

`google_active_directory_peering` represents the `google-beta_google_active_directory_peering` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthorizedNetwork()`](#fn-withauthorizednetwork)
* [`fn withDomainResource()`](#fn-withdomainresource)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withPeeringId()`](#fn-withpeeringid)
* [`fn withProject()`](#fn-withproject)
* [`fn withStatus()`](#fn-withstatus)
* [`fn withStatusMessage()`](#fn-withstatusmessage)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_active_directory_peering.new` injects a new `google-beta_google_active_directory_peering` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_active_directory_peering.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_active_directory_peering` using the reference:

    $._ref.google-beta_google_active_directory_peering.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_active_directory_peering.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `authorized_network` (`string`): The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  - `domain_resource` (`string`): Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  - `labels` (`obj`): Resource labels that can contain user-provided metadata When `null`, the `labels` field will be omitted from the resulting object.
  - `peering_id` (`string`): 
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `status` (`string`): The current state of this Peering. When `null`, the `status` field will be omitted from the resulting object.
  - `status_message` (`string`): Additional information about the current status of this peering, if available. When `null`, the `status_message` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_active_directory_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_active_directory_peering.newAttrs` constructs a new object with attributes and blocks configured for the `google_active_directory_peering`
Terraform resource.

Unlike [google-beta.google_active_directory_peering.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `authorized_network` (`string`): The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  - `domain_resource` (`string`): Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  - `labels` (`obj`): Resource labels that can contain user-provided metadata When `null`, the `labels` field will be omitted from the resulting object.
  - `peering_id` (`string`): 
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `status` (`string`): The current state of this Peering. When `null`, the `status` field will be omitted from the resulting object.
  - `status_message` (`string`): Additional information about the current status of this peering, if available. When `null`, the `status_message` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_active_directory_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_active_directory_peering` resource into the root Terraform configuration.


### fn withAuthorizedNetwork

```ts
withAuthorizedNetwork()
```

`google-beta.string.withAuthorizedNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the authorized_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `authorized_network` field.


### fn withDomainResource

```ts
withDomainResource()
```

`google-beta.string.withDomainResource` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the domain_resource field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `domain_resource` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withPeeringId

```ts
withPeeringId()
```

`google-beta.string.withPeeringId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peering_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peering_id` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withStatus

```ts
withStatus()
```

`google-beta.string.withStatus` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the status field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `status` field.


### fn withStatusMessage

```ts
withStatusMessage()
```

`google-beta.string.withStatusMessage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the status_message field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `status_message` field.


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


`google-beta.google_active_directory_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
