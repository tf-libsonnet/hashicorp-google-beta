---
permalink: /google_compute_network_attachment/
---

# google_compute_network_attachment

`google_compute_network_attachment` represents the `google-beta_google_compute_network_attachment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConnectionPreference()`](#fn-withconnectionpreference)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withProducerAcceptLists()`](#fn-withproduceracceptlists)
* [`fn withProducerRejectLists()`](#fn-withproducerrejectlists)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSubnetworks()`](#fn-withsubnetworks)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_network_attachment.new` injects a new `google-beta_google_compute_network_attachment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_network_attachment.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_network_attachment` using the reference:

    $._ref.google-beta_google_compute_network_attachment.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_network_attachment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `connection_preference` (`string`): The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules. Possible values: [&#34;ACCEPT_AUTOMATIC&#34;, &#34;ACCEPT_MANUAL&#34;, &#34;INVALID&#34;]
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  - `producer_accept_lists` (`list`): Projects that are allowed to connect to this network attachment. The project can be specified using its id or number. When `null`, the `producer_accept_lists` field will be omitted from the resulting object.
  - `producer_reject_lists` (`list`): Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number. When `null`, the `producer_reject_lists` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. When `null`, the `region` field will be omitted from the resulting object.
  - `subnetworks` (`list`): An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_network_attachment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_network_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_network_attachment`
Terraform resource.

Unlike [google-beta.google_compute_network_attachment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `connection_preference` (`string`): The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules. Possible values: [&#34;ACCEPT_AUTOMATIC&#34;, &#34;ACCEPT_MANUAL&#34;, &#34;INVALID&#34;]
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  - `producer_accept_lists` (`list`): Projects that are allowed to connect to this network attachment. The project can be specified using its id or number. When `null`, the `producer_accept_lists` field will be omitted from the resulting object.
  - `producer_reject_lists` (`list`): Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number. When `null`, the `producer_reject_lists` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. When `null`, the `region` field will be omitted from the resulting object.
  - `subnetworks` (`list`): An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_network_attachment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_network_attachment` resource into the root Terraform configuration.


### fn withConnectionPreference

```ts
withConnectionPreference()
```

`google-beta.string.withConnectionPreference` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the connection_preference field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `connection_preference` field.


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


### fn withProducerAcceptLists

```ts
withProducerAcceptLists()
```

`google-beta.list.withProducerAcceptLists` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the producer_accept_lists field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `producer_accept_lists` field.


### fn withProducerRejectLists

```ts
withProducerRejectLists()
```

`google-beta.list.withProducerRejectLists` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the producer_reject_lists field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `producer_reject_lists` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withSubnetworks

```ts
withSubnetworks()
```

`google-beta.list.withSubnetworks` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the subnetworks field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `subnetworks` field.


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


`google-beta.google_compute_network_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
