---
permalink: /google_compute_network_peering/
---

# google_compute_network_peering

`google_compute_network_peering` represents the `google-beta_google_compute_network_peering` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withExportCustomRoutes()`](#fn-withexportcustomroutes)
* [`fn withExportSubnetRoutesWithPublicIp()`](#fn-withexportsubnetrouteswithpublicip)
* [`fn withImportCustomRoutes()`](#fn-withimportcustomroutes)
* [`fn withImportSubnetRoutesWithPublicIp()`](#fn-withimportsubnetrouteswithpublicip)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withPeerNetwork()`](#fn-withpeernetwork)
* [`fn withStackType()`](#fn-withstacktype)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_network_peering.new` injects a new `google-beta_google_compute_network_peering` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_network_peering.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_network_peering` using the reference:

    $._ref.google-beta_google_compute_network_peering.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_network_peering.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `export_custom_routes` (`bool`): Whether to export the custom routes to the peer network. Defaults to false. When `null`, the `export_custom_routes` field will be omitted from the resulting object.
  - `export_subnet_routes_with_public_ip` (`bool`): Set the `export_subnet_routes_with_public_ip` field on the resulting resource block. When `null`, the `export_subnet_routes_with_public_ip` field will be omitted from the resulting object.
  - `import_custom_routes` (`bool`): Whether to export the custom routes from the peer network. Defaults to false. When `null`, the `import_custom_routes` field will be omitted from the resulting object.
  - `import_subnet_routes_with_public_ip` (`bool`): Set the `import_subnet_routes_with_public_ip` field on the resulting resource block. When `null`, the `import_subnet_routes_with_public_ip` field will be omitted from the resulting object.
  - `name` (`string`): Name of the peering.
  - `network` (`string`): The primary network of the peering.
  - `peer_network` (`string`): The peer network in the peering. The peer network may belong to a different project.
  - `stack_type` (`string`): Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: [&#34;IPV4_ONLY&#34;, &#34;IPV4_IPV6&#34;] When `null`, the `stack_type` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_network_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_network_peering.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_network_peering`
Terraform resource.

Unlike [google-beta.google_compute_network_peering.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `export_custom_routes` (`bool`): Whether to export the custom routes to the peer network. Defaults to false. When `null`, the `export_custom_routes` field will be omitted from the resulting object.
  - `export_subnet_routes_with_public_ip` (`bool`): Set the `export_subnet_routes_with_public_ip` field on the resulting object. When `null`, the `export_subnet_routes_with_public_ip` field will be omitted from the resulting object.
  - `import_custom_routes` (`bool`): Whether to export the custom routes from the peer network. Defaults to false. When `null`, the `import_custom_routes` field will be omitted from the resulting object.
  - `import_subnet_routes_with_public_ip` (`bool`): Set the `import_subnet_routes_with_public_ip` field on the resulting object. When `null`, the `import_subnet_routes_with_public_ip` field will be omitted from the resulting object.
  - `name` (`string`): Name of the peering.
  - `network` (`string`): The primary network of the peering.
  - `peer_network` (`string`): The peer network in the peering. The peer network may belong to a different project.
  - `stack_type` (`string`): Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: [&#34;IPV4_ONLY&#34;, &#34;IPV4_IPV6&#34;] When `null`, the `stack_type` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_network_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_network_peering` resource into the root Terraform configuration.


### fn withExportCustomRoutes

```ts
withExportCustomRoutes()
```

`google-beta.bool.withExportCustomRoutes` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the export_custom_routes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `export_custom_routes` field.


### fn withExportSubnetRoutesWithPublicIp

```ts
withExportSubnetRoutesWithPublicIp()
```

`google-beta.bool.withExportSubnetRoutesWithPublicIp` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the export_subnet_routes_with_public_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `export_subnet_routes_with_public_ip` field.


### fn withImportCustomRoutes

```ts
withImportCustomRoutes()
```

`google-beta.bool.withImportCustomRoutes` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the import_custom_routes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `import_custom_routes` field.


### fn withImportSubnetRoutesWithPublicIp

```ts
withImportSubnetRoutesWithPublicIp()
```

`google-beta.bool.withImportSubnetRoutesWithPublicIp` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the import_subnet_routes_with_public_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `import_subnet_routes_with_public_ip` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google-beta.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withPeerNetwork

```ts
withPeerNetwork()
```

`google-beta.string.withPeerNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_network` field.


### fn withStackType

```ts
withStackType()
```

`google-beta.string.withStackType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the stack_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `stack_type` field.


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


`google-beta.google_compute_network_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
