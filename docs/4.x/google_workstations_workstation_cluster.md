---
permalink: /google_workstations_workstation_cluster/
---

# google_workstations_workstation_cluster

`google_workstations_workstation_cluster` represents the `google-beta_google_workstations_workstation_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withPrivateClusterConfig()`](#fn-withprivateclusterconfig)
* [`fn withPrivateClusterConfigMixin()`](#fn-withprivateclusterconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWorkstationClusterId()`](#fn-withworkstationclusterid)
* [`obj private_cluster_config`](#obj-private_cluster_config)
  * [`fn new()`](#fn-private_cluster_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_workstations_workstation_cluster.new` injects a new `google-beta_google_workstations_workstation_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_workstations_workstation_cluster.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_workstations_workstation_cluster` using the reference:

    $._ref.google-beta_google_workstations_workstation_cluster.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_workstations_workstation_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Client-specified annotations. This is distinct from labels. When `null`, the `annotations` field will be omitted from the resulting object.
  - `display_name` (`string`): Human-readable name for this resource. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the workstation cluster should reside. When `null`, the `location` field will be omitted from the resulting object.
  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. 
It is specified in the following form: &#34;projects/{projectNumber}/global/networks/{network_id}&#34;.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `subnetwork` (`string`): Name of the Compute Engine subnetwork in which instances associated with this cluster will be created. 
Must be part of the subnetwork specified for this cluster.
  - `workstation_cluster_id` (`string`): The ID of the workstation cluster.
  - `private_cluster_config` (`list[obj]`): Configuration for private cluster. When `null`, the `private_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_cluster.private_cluster_config.new](#fn-private_cluster_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_workstations_workstation_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `google_workstations_workstation_cluster`
Terraform resource.

Unlike [google-beta.google_workstations_workstation_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Client-specified annotations. This is distinct from labels. When `null`, the `annotations` field will be omitted from the resulting object.
  - `display_name` (`string`): Human-readable name for this resource. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the workstation cluster should reside. When `null`, the `location` field will be omitted from the resulting object.
  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. 
It is specified in the following form: &#34;projects/{projectNumber}/global/networks/{network_id}&#34;.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `subnetwork` (`string`): Name of the Compute Engine subnetwork in which instances associated with this cluster will be created. 
Must be part of the subnetwork specified for this cluster.
  - `workstation_cluster_id` (`string`): The ID of the workstation cluster.
  - `private_cluster_config` (`list[obj]`): Configuration for private cluster. When `null`, the `private_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_cluster.private_cluster_config.new](#fn-private_cluster_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_workstations_workstation_cluster` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google-beta.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withNetwork

```ts
withNetwork()
```

`google-beta.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withPrivateClusterConfig

```ts
withPrivateClusterConfig()
```

`google-beta.list[obj].withPrivateClusterConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_cluster_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withPrivateClusterConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_cluster_config` field.


### fn withPrivateClusterConfigMixin

```ts
withPrivateClusterConfigMixin()
```

`google-beta.list[obj].withPrivateClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the private_cluster_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPrivateClusterConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `private_cluster_config` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google-beta.string.withSubnetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnetwork` field.


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


### fn withWorkstationClusterId

```ts
withWorkstationClusterId()
```

`google-beta.string.withWorkstationClusterId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the workstation_cluster_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `workstation_cluster_id` field.


## obj private_cluster_config



### fn private_cluster_config.new

```ts
new()
```


`google-beta.google_workstations_workstation_cluster.private_cluster_config.new` constructs a new object with attributes and blocks configured for the `private_cluster_config`
Terraform sub block.



**Args**:
  - `enable_private_endpoint` (`bool`): Whether Workstations endpoint is private.

**Returns**:
  - An attribute object that represents the `private_cluster_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_workstations_workstation_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
