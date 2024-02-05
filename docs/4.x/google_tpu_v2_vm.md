---
permalink: /google_tpu_v2_vm/
---

# google_tpu_v2_vm

`google_tpu_v2_vm` represents the `google-beta_google_tpu_v2_vm` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAcceleratorConfig()`](#fn-withacceleratorconfig)
* [`fn withAcceleratorConfigMixin()`](#fn-withacceleratorconfigmixin)
* [`fn withAcceleratorType()`](#fn-withacceleratortype)
* [`fn withCidrBlock()`](#fn-withcidrblock)
* [`fn withDataDisks()`](#fn-withdatadisks)
* [`fn withDataDisksMixin()`](#fn-withdatadisksmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withName()`](#fn-withname)
* [`fn withNetworkConfig()`](#fn-withnetworkconfig)
* [`fn withNetworkConfigMixin()`](#fn-withnetworkconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRuntimeVersion()`](#fn-withruntimeversion)
* [`fn withSchedulingConfig()`](#fn-withschedulingconfig)
* [`fn withSchedulingConfigMixin()`](#fn-withschedulingconfigmixin)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withServiceAccountMixin()`](#fn-withserviceaccountmixin)
* [`fn withShieldedInstanceConfig()`](#fn-withshieldedinstanceconfig)
* [`fn withShieldedInstanceConfigMixin()`](#fn-withshieldedinstanceconfigmixin)
* [`fn withTags()`](#fn-withtags)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj accelerator_config`](#obj-accelerator_config)
  * [`fn new()`](#fn-accelerator_confignew)
* [`obj data_disks`](#obj-data_disks)
  * [`fn new()`](#fn-data_disksnew)
* [`obj network_config`](#obj-network_config)
  * [`fn new()`](#fn-network_confignew)
* [`obj scheduling_config`](#obj-scheduling_config)
  * [`fn new()`](#fn-scheduling_confignew)
* [`obj service_account`](#obj-service_account)
  * [`fn new()`](#fn-service_accountnew)
* [`obj shielded_instance_config`](#obj-shielded_instance_config)
  * [`fn new()`](#fn-shielded_instance_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_tpu_v2_vm.new` injects a new `google-beta_google_tpu_v2_vm` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_tpu_v2_vm.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_tpu_v2_vm` using the reference:

    $._ref.google-beta_google_tpu_v2_vm.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_tpu_v2_vm.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `accelerator_type` (`string`): TPU accelerator type for the TPU. &#39;accelerator_type&#39; cannot be used at the same time as
&#39;accelerator_config&#39;. If neither is specified, &#39;accelerator_type&#39; defaults to &#39;v2-8&#39;. When `null`, the `accelerator_type` field will be omitted from the resulting object.
  - `cidr_block` (`string`): The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger
block would be wasteful (a node can only consume one IP address). Errors will occur if the
CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts
with any subnetworks in the user&#39;s provided network, or the provided network is peered with
another network that is using that CIDR block. When `null`, the `cidr_block` field will be omitted from the resulting object.
  - `description` (`string`): Text description of the TPU. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `metadata` (`obj`): Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script. When `null`, the `metadata` field will be omitted from the resulting object.
  - `name` (`string`): The immutable name of the TPU.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `runtime_version` (`string`): Runtime version for the TPU.
  - `tags` (`list`): Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls. When `null`, the `tags` field will be omitted from the resulting object.
  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `accelerator_config` (`list[obj]`): The AccleratorConfig for the TPU Node. &#39;accelerator_config&#39; cannot be used at the same time
as &#39;accelerator_type&#39;. If neither is specified, &#39;accelerator_type&#39; defaults to &#39;v2-8&#39;. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.accelerator_config.new](#fn-accelerator_confignew) constructor.
  - `data_disks` (`list[obj]`): The additional data disks for the Node. When `null`, the `data_disks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.data_disks.new](#fn-data_disksnew) constructor.
  - `network_config` (`list[obj]`): Network configurations for the TPU node. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.network_config.new](#fn-network_confignew) constructor.
  - `scheduling_config` (`list[obj]`): The scheduling options for this node. When `null`, the `scheduling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.scheduling_config.new](#fn-scheduling_confignew) constructor.
  - `service_account` (`list[obj]`): The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
specified, the default compute service account will be used. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.service_account.new](#fn-service_accountnew) constructor.
  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_tpu_v2_vm.newAttrs` constructs a new object with attributes and blocks configured for the `google_tpu_v2_vm`
Terraform resource.

Unlike [google-beta.google_tpu_v2_vm.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `accelerator_type` (`string`): TPU accelerator type for the TPU. &#39;accelerator_type&#39; cannot be used at the same time as
&#39;accelerator_config&#39;. If neither is specified, &#39;accelerator_type&#39; defaults to &#39;v2-8&#39;. When `null`, the `accelerator_type` field will be omitted from the resulting object.
  - `cidr_block` (`string`): The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger
block would be wasteful (a node can only consume one IP address). Errors will occur if the
CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts
with any subnetworks in the user&#39;s provided network, or the provided network is peered with
another network that is using that CIDR block. When `null`, the `cidr_block` field will be omitted from the resulting object.
  - `description` (`string`): Text description of the TPU. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `metadata` (`obj`): Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script. When `null`, the `metadata` field will be omitted from the resulting object.
  - `name` (`string`): The immutable name of the TPU.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `runtime_version` (`string`): Runtime version for the TPU.
  - `tags` (`list`): Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls. When `null`, the `tags` field will be omitted from the resulting object.
  - `zone` (`string`): The GCP location for the TPU. If it is not provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `accelerator_config` (`list[obj]`): The AccleratorConfig for the TPU Node. &#39;accelerator_config&#39; cannot be used at the same time
as &#39;accelerator_type&#39;. If neither is specified, &#39;accelerator_type&#39; defaults to &#39;v2-8&#39;. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.accelerator_config.new](#fn-accelerator_confignew) constructor.
  - `data_disks` (`list[obj]`): The additional data disks for the Node. When `null`, the `data_disks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.data_disks.new](#fn-data_disksnew) constructor.
  - `network_config` (`list[obj]`): Network configurations for the TPU node. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.network_config.new](#fn-network_confignew) constructor.
  - `scheduling_config` (`list[obj]`): The scheduling options for this node. When `null`, the `scheduling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.scheduling_config.new](#fn-scheduling_confignew) constructor.
  - `service_account` (`list[obj]`): The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
specified, the default compute service account will be used. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.service_account.new](#fn-service_accountnew) constructor.
  - `shielded_instance_config` (`list[obj]`): Shielded Instance options. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_tpu_v2_vm.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_tpu_v2_vm` resource into the root Terraform configuration.


### fn withAcceleratorConfig

```ts
withAcceleratorConfig()
```

`google-beta.list[obj].withAcceleratorConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the accelerator_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withAcceleratorConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `accelerator_config` field.


### fn withAcceleratorConfigMixin

```ts
withAcceleratorConfigMixin()
```

`google-beta.list[obj].withAcceleratorConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the accelerator_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAcceleratorConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `accelerator_config` field.


### fn withAcceleratorType

```ts
withAcceleratorType()
```

`google-beta.string.withAcceleratorType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the accelerator_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `accelerator_type` field.


### fn withCidrBlock

```ts
withCidrBlock()
```

`google-beta.string.withCidrBlock` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cidr_block field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cidr_block` field.


### fn withDataDisks

```ts
withDataDisks()
```

`google-beta.list[obj].withDataDisks` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data_disks field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withDataDisksMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data_disks` field.


### fn withDataDisksMixin

```ts
withDataDisksMixin()
```

`google-beta.list[obj].withDataDisksMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data_disks field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDataDisks](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data_disks` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMetadata

```ts
withMetadata()
```

`google-beta.obj.withMetadata` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the metadata field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `metadata` field.


### fn withName

```ts
withName()
```

`google-beta.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetworkConfig

```ts
withNetworkConfig()
```

`google-beta.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withNetworkConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_config` field.


### fn withNetworkConfigMixin

```ts
withNetworkConfigMixin()
```

`google-beta.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworkConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_config` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRuntimeVersion

```ts
withRuntimeVersion()
```

`google-beta.string.withRuntimeVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the runtime_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `runtime_version` field.


### fn withSchedulingConfig

```ts
withSchedulingConfig()
```

`google-beta.list[obj].withSchedulingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scheduling_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withSchedulingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scheduling_config` field.


### fn withSchedulingConfigMixin

```ts
withSchedulingConfigMixin()
```

`google-beta.list[obj].withSchedulingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scheduling_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSchedulingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scheduling_config` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google-beta.list[obj].withServiceAccount` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_account field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withServiceAccountMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_account` field.


### fn withServiceAccountMixin

```ts
withServiceAccountMixin()
```

`google-beta.list[obj].withServiceAccountMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_account field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withServiceAccount](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_account` field.


### fn withShieldedInstanceConfig

```ts
withShieldedInstanceConfig()
```

`google-beta.list[obj].withShieldedInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the shielded_instance_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withShieldedInstanceConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.


### fn withShieldedInstanceConfigMixin

```ts
withShieldedInstanceConfigMixin()
```

`google-beta.list[obj].withShieldedInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the shielded_instance_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withShieldedInstanceConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.


### fn withTags

```ts
withTags()
```

`google-beta.list.withTags` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the tags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `tags` field.


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


### fn withZone

```ts
withZone()
```

`google-beta.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj accelerator_config



### fn accelerator_config.new

```ts
new()
```


`google-beta.google_tpu_v2_vm.accelerator_config.new` constructs a new object with attributes and blocks configured for the `accelerator_config`
Terraform sub block.



**Args**:
  - `topology` (`string`): Topology of TPU in chips.
  - `type` (`string`): Type of TPU. Possible values: [&#34;V2&#34;, &#34;V3&#34;, &#34;V4&#34;]

**Returns**:
  - An attribute object that represents the `accelerator_config` sub block.


## obj data_disks



### fn data_disks.new

```ts
new()
```


`google-beta.google_tpu_v2_vm.data_disks.new` constructs a new object with attributes and blocks configured for the `data_disks`
Terraform sub block.



**Args**:
  - `mode` (`string`): The mode in which to attach this disk. If not specified, the default is READ_WRITE
mode. Only applicable to dataDisks. Default value: &#34;READ_WRITE&#34; Possible values: [&#34;READ_WRITE&#34;, &#34;READ_ONLY&#34;] When `null`, the `mode` field will be omitted from the resulting object.
  - `source_disk` (`string`): Specifies the full path to an existing disk. For example:
&#34;projects/my-project/zones/us-central1-c/disks/my-disk&#34;.

**Returns**:
  - An attribute object that represents the `data_disks` sub block.


## obj network_config



### fn network_config.new

```ts
new()
```


`google-beta.google_tpu_v2_vm.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`
Terraform sub block.



**Args**:
  - `can_ip_forward` (`bool`): Allows the TPU node to send and receive packets with non-matching destination or source
IPs. This is required if you plan to use the TPU workers to forward routes. When `null`, the `can_ip_forward` field will be omitted from the resulting object.
  - `enable_external_ips` (`bool`): Indicates that external IP addresses would be associated with the TPU workers. If set to
false, the specified subnetwork or network should have Private Google Access enabled. When `null`, the `enable_external_ips` field will be omitted from the resulting object.
  - `network` (`string`): The name of the network for the TPU node. It must be a preexisting Google Compute Engine
network. If both network and subnetwork are specified, the given subnetwork must belong
to the given network. If network is not specified, it will be looked up from the
subnetwork if one is provided, or otherwise use &#34;default&#34;. When `null`, the `network` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The name of the subnetwork for the TPU node. It must be a preexisting Google Compute
Engine subnetwork. If both network and subnetwork are specified, the given subnetwork
must belong to the given network. If subnetwork is not specified, the subnetwork with the
same name as the network will be used. When `null`, the `subnetwork` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_config` sub block.


## obj scheduling_config



### fn scheduling_config.new

```ts
new()
```


`google-beta.google_tpu_v2_vm.scheduling_config.new` constructs a new object with attributes and blocks configured for the `scheduling_config`
Terraform sub block.



**Args**:
  - `preemptible` (`bool`): Defines whether the node is preemptible. When `null`, the `preemptible` field will be omitted from the resulting object.
  - `reserved` (`bool`): Whether the node is created under a reservation. When `null`, the `reserved` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `scheduling_config` sub block.


## obj service_account



### fn service_account.new

```ts
new()
```


`google-beta.google_tpu_v2_vm.service_account.new` constructs a new object with attributes and blocks configured for the `service_account`
Terraform sub block.



**Args**:
  - `email` (`string`): Email address of the service account. If empty, default Compute service account will be used. When `null`, the `email` field will be omitted from the resulting object.
  - `scope` (`list`): The list of scopes to be made available for this service account. If empty, access to all
Cloud APIs will be allowed. When `null`, the `scope` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `service_account` sub block.


## obj shielded_instance_config



### fn shielded_instance_config.new

```ts
new()
```


`google-beta.google_tpu_v2_vm.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_tpu_v2_vm.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
