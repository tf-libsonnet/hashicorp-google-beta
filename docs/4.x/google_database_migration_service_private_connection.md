---
permalink: /google_database_migration_service_private_connection/
---

# google_database_migration_service_private_connection

`google_database_migration_service_private_connection` represents the `google-beta_google_database_migration_service_private_connection` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPrivateConnectionId()`](#fn-withprivateconnectionid)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVpcPeeringConfig()`](#fn-withvpcpeeringconfig)
* [`fn withVpcPeeringConfigMixin()`](#fn-withvpcpeeringconfigmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vpc_peering_config`](#obj-vpc_peering_config)
  * [`fn new()`](#fn-vpc_peering_confignew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_database_migration_service_private_connection.new` injects a new `google-beta_google_database_migration_service_private_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_database_migration_service_private_connection.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_database_migration_service_private_connection` using the reference:

    $._ref.google-beta_google_database_migration_service_private_connection.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_database_migration_service_private_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this private connection is located in.
  - `private_connection_id` (`string`): The private connectivity identifier.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_database_migration_service_private_connection.timeouts.new](#fn-timeoutsnew) constructor.
  - `vpc_peering_config` (`list[obj]`): The VPC Peering configuration is used to create VPC peering
between databasemigrationservice and the consumer&#39;s VPC. When `null`, the `vpc_peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_database_migration_service_private_connection.vpc_peering_config.new](#fn-vpc_peering_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_database_migration_service_private_connection.newAttrs` constructs a new object with attributes and blocks configured for the `google_database_migration_service_private_connection`
Terraform resource.

Unlike [google-beta.google_database_migration_service_private_connection.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Display name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this private connection is located in.
  - `private_connection_id` (`string`): The private connectivity identifier.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_database_migration_service_private_connection.timeouts.new](#fn-timeoutsnew) constructor.
  - `vpc_peering_config` (`list[obj]`): The VPC Peering configuration is used to create VPC peering
between databasemigrationservice and the consumer&#39;s VPC. When `null`, the `vpc_peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_database_migration_service_private_connection.vpc_peering_config.new](#fn-vpc_peering_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_database_migration_service_private_connection` resource into the root Terraform configuration.


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


### fn withPrivateConnectionId

```ts
withPrivateConnectionId()
```

`google-beta.string.withPrivateConnectionId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the private_connection_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `private_connection_id` field.


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


### fn withVpcPeeringConfig

```ts
withVpcPeeringConfig()
```

`google-beta.list[obj].withVpcPeeringConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vpc_peering_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withVpcPeeringConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vpc_peering_config` field.


### fn withVpcPeeringConfigMixin

```ts
withVpcPeeringConfigMixin()
```

`google-beta.list[obj].withVpcPeeringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vpc_peering_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withVpcPeeringConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vpc_peering_config` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_database_migration_service_private_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vpc_peering_config



### fn vpc_peering_config.new

```ts
new()
```


`google-beta.google_database_migration_service_private_connection.vpc_peering_config.new` constructs a new object with attributes and blocks configured for the `vpc_peering_config`
Terraform sub block.



**Args**:
  - `subnet` (`string`): A free subnet for peering. (CIDR of /29)
  - `vpc_name` (`string`): Fully qualified name of the VPC that Database Migration Service will peer to.
Format: projects/{project}/global/{networks}/{name}

**Returns**:
  - An attribute object that represents the `vpc_peering_config` sub block.