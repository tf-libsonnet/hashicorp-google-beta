---
permalink: /google_workstations_workstation_config/
---

# google_workstations_workstation_config

`google_workstations_workstation_config` represents the `google-beta_google_workstations_workstation_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withContainer()`](#fn-withcontainer)
* [`fn withContainerMixin()`](#fn-withcontainermixin)
* [`fn withDisableTcpConnections()`](#fn-withdisabletcpconnections)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableAuditAgent()`](#fn-withenableauditagent)
* [`fn withEncryptionKey()`](#fn-withencryptionkey)
* [`fn withEncryptionKeyMixin()`](#fn-withencryptionkeymixin)
* [`fn withHost()`](#fn-withhost)
* [`fn withHostMixin()`](#fn-withhostmixin)
* [`fn withIdleTimeout()`](#fn-withidletimeout)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPersistentDirectories()`](#fn-withpersistentdirectories)
* [`fn withPersistentDirectoriesMixin()`](#fn-withpersistentdirectoriesmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withReadinessChecks()`](#fn-withreadinesschecks)
* [`fn withReadinessChecksMixin()`](#fn-withreadinesschecksmixin)
* [`fn withReplicaZones()`](#fn-withreplicazones)
* [`fn withRunningTimeout()`](#fn-withrunningtimeout)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWorkstationClusterId()`](#fn-withworkstationclusterid)
* [`fn withWorkstationConfigId()`](#fn-withworkstationconfigid)
* [`obj container`](#obj-container)
  * [`fn new()`](#fn-containernew)
* [`obj encryption_key`](#obj-encryption_key)
  * [`fn new()`](#fn-encryption_keynew)
* [`obj host`](#obj-host)
  * [`fn new()`](#fn-hostnew)
  * [`obj host.gce_instance`](#obj-hostgce_instance)
    * [`fn new()`](#fn-hostgce_instancenew)
    * [`obj host.gce_instance.accelerators`](#obj-hostgce_instanceaccelerators)
      * [`fn new()`](#fn-hostgce_instanceacceleratorsnew)
    * [`obj host.gce_instance.confidential_instance_config`](#obj-hostgce_instanceconfidential_instance_config)
      * [`fn new()`](#fn-hostgce_instanceconfidential_instance_confignew)
    * [`obj host.gce_instance.shielded_instance_config`](#obj-hostgce_instanceshielded_instance_config)
      * [`fn new()`](#fn-hostgce_instanceshielded_instance_confignew)
* [`obj persistent_directories`](#obj-persistent_directories)
  * [`fn new()`](#fn-persistent_directoriesnew)
  * [`obj persistent_directories.gce_pd`](#obj-persistent_directoriesgce_pd)
    * [`fn new()`](#fn-persistent_directoriesgce_pdnew)
* [`obj readiness_checks`](#obj-readiness_checks)
  * [`fn new()`](#fn-readiness_checksnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_workstations_workstation_config.new` injects a new `google-beta_google_workstations_workstation_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_workstations_workstation_config.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_workstations_workstation_config` using the reference:

    $._ref.google-beta_google_workstations_workstation_config.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_workstations_workstation_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Client-specified annotations. This is distinct from labels.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `disable_tcp_connections` (`bool`): Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss. When `null`, the `disable_tcp_connections` field will be omitted from the resulting object.
  - `display_name` (`string`): Human-readable name for this resource. When `null`, the `display_name` field will be omitted from the resulting object.
  - `enable_audit_agent` (`bool`): Whether to enable Linux &#39;auditd&#39; logging on the workstation. When enabled, a service account must also be specified that has &#39;logging.buckets.write&#39; permission on the project. Operating system audit logging is distinct from Cloud Audit Logs. When `null`, the `enable_audit_agent` field will be omitted from the resulting object.
  - `idle_timeout` (`string`): How long to wait before automatically stopping an instance that hasn&#39;t recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `idle_timeout` field will be omitted from the resulting object.
  - `labels` (`obj`): Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the workstation cluster config should reside.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `replica_zones` (`list`): Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster&#39;s region must be specified—for example, &#39;[&#39;us-central1-a&#39;, &#39;us-central1-f&#39;]&#39;.
If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created. When `null`, the `replica_zones` field will be omitted from the resulting object.
  - `running_timeout` (`string`): How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if &#39;encryption_key&#39; is set. Defaults to 12 hours.
A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `running_timeout` field will be omitted from the resulting object.
  - `workstation_cluster_id` (`string`): The ID of the parent workstation cluster.
  - `workstation_config_id` (`string`): The ID to be assigned to the workstation cluster config.
  - `container` (`list[obj]`): Container that will be run for each workstation using this configuration when that workstation is started. When `null`, the `container` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.container.new](#fn-containernew) constructor.
  - `encryption_key` (`list[obj]`): Encrypts resources of this workstation configuration using a customer-managed encryption key.

If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata.
If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk will be lost.
If the encryption key is revoked, the workstation session will automatically be stopped within 7 hours. When `null`, the `encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.encryption_key.new](#fn-encryption_keynew) constructor.
  - `host` (`list[obj]`): Runtime host for a workstation. When `null`, the `host` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.new](#fn-hostnew) constructor.
  - `persistent_directories` (`list[obj]`): Directories to persist across workstation sessions. When `null`, the `persistent_directories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.persistent_directories.new](#fn-persistent_directoriesnew) constructor.
  - `readiness_checks` (`list[obj]`): Readiness checks to be performed on a workstation. When `null`, the `readiness_checks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.readiness_checks.new](#fn-readiness_checksnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_workstations_workstation_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_workstations_workstation_config`
Terraform resource.

Unlike [google-beta.google_workstations_workstation_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Client-specified annotations. This is distinct from labels.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `disable_tcp_connections` (`bool`): Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss. When `null`, the `disable_tcp_connections` field will be omitted from the resulting object.
  - `display_name` (`string`): Human-readable name for this resource. When `null`, the `display_name` field will be omitted from the resulting object.
  - `enable_audit_agent` (`bool`): Whether to enable Linux &#39;auditd&#39; logging on the workstation. When enabled, a service account must also be specified that has &#39;logging.buckets.write&#39; permission on the project. Operating system audit logging is distinct from Cloud Audit Logs. When `null`, the `enable_audit_agent` field will be omitted from the resulting object.
  - `idle_timeout` (`string`): How long to wait before automatically stopping an instance that hasn&#39;t recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `idle_timeout` field will be omitted from the resulting object.
  - `labels` (`obj`): Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the workstation cluster config should reside.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `replica_zones` (`list`): Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster&#39;s region must be specified—for example, &#39;[&#39;us-central1-a&#39;, &#39;us-central1-f&#39;]&#39;.
If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created. When `null`, the `replica_zones` field will be omitted from the resulting object.
  - `running_timeout` (`string`): How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if &#39;encryption_key&#39; is set. Defaults to 12 hours.
A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `running_timeout` field will be omitted from the resulting object.
  - `workstation_cluster_id` (`string`): The ID of the parent workstation cluster.
  - `workstation_config_id` (`string`): The ID to be assigned to the workstation cluster config.
  - `container` (`list[obj]`): Container that will be run for each workstation using this configuration when that workstation is started. When `null`, the `container` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.container.new](#fn-containernew) constructor.
  - `encryption_key` (`list[obj]`): Encrypts resources of this workstation configuration using a customer-managed encryption key.

If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata.
If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk will be lost.
If the encryption key is revoked, the workstation session will automatically be stopped within 7 hours. When `null`, the `encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.encryption_key.new](#fn-encryption_keynew) constructor.
  - `host` (`list[obj]`): Runtime host for a workstation. When `null`, the `host` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.new](#fn-hostnew) constructor.
  - `persistent_directories` (`list[obj]`): Directories to persist across workstation sessions. When `null`, the `persistent_directories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.persistent_directories.new](#fn-persistent_directoriesnew) constructor.
  - `readiness_checks` (`list[obj]`): Readiness checks to be performed on a workstation. When `null`, the `readiness_checks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.readiness_checks.new](#fn-readiness_checksnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_workstations_workstation_config` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google-beta.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withContainer

```ts
withContainer()
```

`google-beta.list[obj].withContainer` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the container field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withContainerMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `container` field.


### fn withContainerMixin

```ts
withContainerMixin()
```

`google-beta.list[obj].withContainerMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the container field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withContainer](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `container` field.


### fn withDisableTcpConnections

```ts
withDisableTcpConnections()
```

`google-beta.bool.withDisableTcpConnections` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disable_tcp_connections field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disable_tcp_connections` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnableAuditAgent

```ts
withEnableAuditAgent()
```

`google-beta.bool.withEnableAuditAgent` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_audit_agent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_audit_agent` field.


### fn withEncryptionKey

```ts
withEncryptionKey()
```

`google-beta.list[obj].withEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withEncryptionKeyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_key` field.


### fn withEncryptionKeyMixin

```ts
withEncryptionKeyMixin()
```

`google-beta.list[obj].withEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withEncryptionKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_key` field.


### fn withHost

```ts
withHost()
```

`google-beta.list[obj].withHost` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the host field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withHostMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `host` field.


### fn withHostMixin

```ts
withHostMixin()
```

`google-beta.list[obj].withHostMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the host field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withHost](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `host` field.


### fn withIdleTimeout

```ts
withIdleTimeout()
```

`google-beta.string.withIdleTimeout` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the idle_timeout field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `idle_timeout` field.


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


### fn withPersistentDirectories

```ts
withPersistentDirectories()
```

`google-beta.list[obj].withPersistentDirectories` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the persistent_directories field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withPersistentDirectoriesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `persistent_directories` field.


### fn withPersistentDirectoriesMixin

```ts
withPersistentDirectoriesMixin()
```

`google-beta.list[obj].withPersistentDirectoriesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the persistent_directories field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPersistentDirectories](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `persistent_directories` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReadinessChecks

```ts
withReadinessChecks()
```

`google-beta.list[obj].withReadinessChecks` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the readiness_checks field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withReadinessChecksMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `readiness_checks` field.


### fn withReadinessChecksMixin

```ts
withReadinessChecksMixin()
```

`google-beta.list[obj].withReadinessChecksMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the readiness_checks field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withReadinessChecks](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `readiness_checks` field.


### fn withReplicaZones

```ts
withReplicaZones()
```

`google-beta.list.withReplicaZones` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the replica_zones field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `replica_zones` field.


### fn withRunningTimeout

```ts
withRunningTimeout()
```

`google-beta.string.withRunningTimeout` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the running_timeout field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `running_timeout` field.


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


### fn withWorkstationConfigId

```ts
withWorkstationConfigId()
```

`google-beta.string.withWorkstationConfigId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the workstation_config_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `workstation_config_id` field.


## obj container



### fn container.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.container.new` constructs a new object with attributes and blocks configured for the `container`
Terraform sub block.



**Args**:
  - `args` (`list`): Arguments passed to the entrypoint. When `null`, the `args` field will be omitted from the resulting object.
  - `command` (`list`): If set, overrides the default ENTRYPOINT specified by the image. When `null`, the `command` field will be omitted from the resulting object.
  - `env` (`obj`): Environment variables passed to the container.
The elements are of the form &#34;KEY=VALUE&#34; for the environment variable &#34;KEY&#34; being given the value &#34;VALUE&#34;. When `null`, the `env` field will be omitted from the resulting object.
  - `image` (`string`): Docker image defining the container. This image must be accessible by the config&#39;s service account. When `null`, the `image` field will be omitted from the resulting object.
  - `run_as_user` (`number`): If set, overrides the USER specified in the image with the given uid. When `null`, the `run_as_user` field will be omitted from the resulting object.
  - `working_dir` (`string`): If set, overrides the default DIR specified by the image. When `null`, the `working_dir` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `container` sub block.


## obj encryption_key



### fn encryption_key.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.encryption_key.new` constructs a new object with attributes and blocks configured for the `encryption_key`
Terraform sub block.



**Args**:
  - `kms_key` (`string`): The name of the Google Cloud KMS encryption key.
  - `kms_key_service_account` (`string`): The service account to use with the specified KMS key.

**Returns**:
  - An attribute object that represents the `encryption_key` sub block.


## obj host



### fn host.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.host.new` constructs a new object with attributes and blocks configured for the `host`
Terraform sub block.



**Args**:
  - `gce_instance` (`list[obj]`): A runtime using a Compute Engine instance. When `null`, the `gce_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.gce_instance.new](#fn-hostgce_instancenew) constructor.

**Returns**:
  - An attribute object that represents the `host` sub block.


## obj host.gce_instance



### fn host.gce_instance.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.host.gce_instance.new` constructs a new object with attributes and blocks configured for the `gce_instance`
Terraform sub block.



**Args**:
  - `boot_disk_size_gb` (`number`): Size of the boot disk in GB. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `disable_public_ip_addresses` (`bool`): Whether instances have no public IP address. When `null`, the `disable_public_ip_addresses` field will be omitted from the resulting object.
  - `enable_nested_virtualization` (`bool`): Whether to enable nested virtualization on the Compute Engine VMs backing the Workstations.

See https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters.workstationConfigs#GceInstance.FIELDS.enable_nested_virtualization When `null`, the `enable_nested_virtualization` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Compute Engine machine type. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `pool_size` (`number`): Number of instances to pool for faster workstation startup. When `null`, the `pool_size` field will be omitted from the resulting object.
  - `service_account` (`string`): Email address of the service account that will be used on VM instances used to support this config. This service account must have permission to pull the specified container image. If not set, VMs will run without a service account, in which case the image must be publicly accessible. When `null`, the `service_account` field will be omitted from the resulting object.
  - `service_account_scopes` (`list`): Scopes to grant to the service_account. Various scopes are automatically added based on feature usage. When specified, users of workstations under this configuration must have &#39;iam.serviceAccounts.actAs&#39; on the service account. When `null`, the `service_account_scopes` field will be omitted from the resulting object.
  - `tags` (`list`): Network tags to add to the Compute Engine machines backing the Workstations. When `null`, the `tags` field will be omitted from the resulting object.
  - `accelerators` (`list[obj]`): An accelerator card attached to the instance. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.gce_instance.accelerators.new](#fn-hosthostacceleratorsnew) constructor.
  - `confidential_instance_config` (`list[obj]`): A set of Compute Engine Confidential VM instance options. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.gce_instance.confidential_instance_config.new](#fn-hosthostconfidential_instance_confignew) constructor.
  - `shielded_instance_config` (`list[obj]`): A set of Compute Engine Shielded instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.host.gce_instance.shielded_instance_config.new](#fn-hosthostshielded_instance_confignew) constructor.

**Returns**:
  - An attribute object that represents the `gce_instance` sub block.


## obj host.gce_instance.accelerators



### fn host.gce_instance.accelerators.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.host.gce_instance.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`
Terraform sub block.



**Args**:
  - `count` (`number`): Number of accelerator cards exposed to the instance.
  - `type` (`string`): Type of accelerator resource to attach to the instance, for example, &#34;nvidia-tesla-p100&#34;.

**Returns**:
  - An attribute object that represents the `accelerators` sub block.


## obj host.gce_instance.confidential_instance_config



### fn host.gce_instance.confidential_instance_config.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.host.gce_instance.confidential_instance_config.new` constructs a new object with attributes and blocks configured for the `confidential_instance_config`
Terraform sub block.



**Args**:
  - `enable_confidential_compute` (`bool`): Whether the instance has confidential compute enabled. When `null`, the `enable_confidential_compute` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `confidential_instance_config` sub block.


## obj host.gce_instance.shielded_instance_config



### fn host.gce_instance.shielded_instance_config.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.host.gce_instance.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Whether the instance has integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Whether the instance has Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.
  - `enable_vtpm` (`bool`): Whether the instance has the vTPM enabled. When `null`, the `enable_vtpm` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj persistent_directories



### fn persistent_directories.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.persistent_directories.new` constructs a new object with attributes and blocks configured for the `persistent_directories`
Terraform sub block.



**Args**:
  - `mount_path` (`string`): Location of this directory in the running workstation. When `null`, the `mount_path` field will be omitted from the resulting object.
  - `gce_pd` (`list[obj]`): A directory to persist across workstation sessions, backed by a Compute Engine regional persistent disk. Can only be updated if not empty during creation. When `null`, the `gce_pd` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_workstations_workstation_config.persistent_directories.gce_pd.new](#fn-persistent_directoriesgce_pdnew) constructor.

**Returns**:
  - An attribute object that represents the `persistent_directories` sub block.


## obj persistent_directories.gce_pd



### fn persistent_directories.gce_pd.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.persistent_directories.gce_pd.new` constructs a new object with attributes and blocks configured for the `gce_pd`
Terraform sub block.



**Args**:
  - `disk_type` (`string`): The type of the persistent disk for the home directory. Defaults to &#39;pd-standard&#39;. When `null`, the `disk_type` field will be omitted from the resulting object.
  - `fs_type` (`string`): Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if &#39;sourceSnapshot&#39; is set. Defaults to &#39;ext4&#39;. When `null`, the `fs_type` field will be omitted from the resulting object.
  - `reclaim_policy` (`string`): Whether the persistent disk should be deleted when the workstation is deleted. Valid values are &#39;DELETE&#39; and &#39;RETAIN&#39;. Defaults to &#39;DELETE&#39;. Possible values: [&#34;DELETE&#34;, &#34;RETAIN&#34;] When `null`, the `reclaim_policy` field will be omitted from the resulting object.
  - `size_gb` (`number`): The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if &#39;sourceSnapshot&#39; is set.
Valid values are &#39;10&#39;, &#39;50&#39;, &#39;100&#39;, &#39;200&#39;, &#39;500&#39;, or &#39;1000&#39;. Defaults to &#39;200&#39;. If less than &#39;200&#39; GB, the &#39;diskType&#39; must be &#39;pd-balanced&#39; or &#39;pd-ssd&#39;. When `null`, the `size_gb` field will be omitted from the resulting object.
  - `source_snapshot` (`string`): Name of the snapshot to use as the source for the disk. This can be the snapshot&#39;s &#39;self_link&#39;, &#39;id&#39;, or a string in the format of &#39;projects/{project}/global/snapshots/{snapshot}&#39;. If set, &#39;sizeGb&#39; and &#39;fsType&#39; must be empty. Can only be updated if it has an existing value. When `null`, the `source_snapshot` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `gce_pd` sub block.


## obj readiness_checks



### fn readiness_checks.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.readiness_checks.new` constructs a new object with attributes and blocks configured for the `readiness_checks`
Terraform sub block.



**Args**:
  - `path` (`string`): Path to which the request should be sent.
  - `port` (`number`): Port to which the request should be sent.

**Returns**:
  - An attribute object that represents the `readiness_checks` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_workstations_workstation_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
