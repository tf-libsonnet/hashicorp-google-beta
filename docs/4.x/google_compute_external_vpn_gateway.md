---
permalink: /google_compute_external_vpn_gateway/
---

# google_compute_external_vpn_gateway

`google_compute_external_vpn_gateway` represents the `google-beta_google_compute_external_vpn_gateway` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withInterface()`](#fn-withinterface)
* [`fn withInterfaceMixin()`](#fn-withinterfacemixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRedundancyType()`](#fn-withredundancytype)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj interface`](#obj-interface)
  * [`fn new()`](#fn-interfacenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_external_vpn_gateway.new` injects a new `google-beta_google_compute_external_vpn_gateway` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_external_vpn_gateway.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_external_vpn_gateway` using the reference:

    $._ref.google-beta_google_compute_external_vpn_gateway.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_external_vpn_gateway.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels for the external VPN gateway resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `redundancy_type` (`string`): Indicates the redundancy type of this external VPN gateway Possible values: [&#34;FOUR_IPS_REDUNDANCY&#34;, &#34;SINGLE_IP_INTERNALLY_REDUNDANT&#34;, &#34;TWO_IPS_REDUNDANCY&#34;] When `null`, the `redundancy_type` field will be omitted from the resulting object.
  - `interface` (`list[obj]`): A list of interfaces on this external VPN gateway. When `null`, the `interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_external_vpn_gateway.interface.new](#fn-interfacenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_external_vpn_gateway.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_external_vpn_gateway.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_external_vpn_gateway`
Terraform resource.

Unlike [google-beta.google_compute_external_vpn_gateway.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels for the external VPN gateway resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `redundancy_type` (`string`): Indicates the redundancy type of this external VPN gateway Possible values: [&#34;FOUR_IPS_REDUNDANCY&#34;, &#34;SINGLE_IP_INTERNALLY_REDUNDANT&#34;, &#34;TWO_IPS_REDUNDANCY&#34;] When `null`, the `redundancy_type` field will be omitted from the resulting object.
  - `interface` (`list[obj]`): A list of interfaces on this external VPN gateway. When `null`, the `interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_external_vpn_gateway.interface.new](#fn-interfacenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_external_vpn_gateway.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_external_vpn_gateway` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withInterface

```ts
withInterface()
```

`google-beta.list[obj].withInterface` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the interface field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withInterfaceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `interface` field.


### fn withInterfaceMixin

```ts
withInterfaceMixin()
```

`google-beta.list[obj].withInterfaceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the interface field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withInterface](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `interface` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withRedundancyType

```ts
withRedundancyType()
```

`google-beta.string.withRedundancyType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the redundancy_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `redundancy_type` field.


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


## obj interface



### fn interface.new

```ts
new()
```


`google-beta.google_compute_external_vpn_gateway.interface.new` constructs a new object with attributes and blocks configured for the `interface`
Terraform sub block.



**Args**:
  - `ip_address` (`string`): IP address of the interface in the external VPN gateway.
Only IPv4 is supported. This IP address can be either from
your on-premise gateway or another Cloud provider&#39;s VPN gateway,
it cannot be an IP address from Google Compute Engine. When `null`, the `ip_address` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `interface` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_compute_external_vpn_gateway.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
