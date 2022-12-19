---
permalink: /google_dataproc_cluster/
---

# google_dataproc_cluster

`google_dataproc_cluster` represents the `google-beta_google_dataproc_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClusterConfig()`](#fn-withclusterconfig)
* [`fn withClusterConfigMixin()`](#fn-withclusterconfigmixin)
* [`fn withGracefulDecommissionTimeout()`](#fn-withgracefuldecommissiontimeout)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj cluster_config`](#obj-cluster_config)
  * [`fn new()`](#fn-cluster_confignew)
  * [`obj cluster_config.autoscaling_config`](#obj-cluster_configautoscaling_config)
    * [`fn new()`](#fn-cluster_configautoscaling_confignew)
  * [`obj cluster_config.encryption_config`](#obj-cluster_configencryption_config)
    * [`fn new()`](#fn-cluster_configencryption_confignew)
  * [`obj cluster_config.endpoint_config`](#obj-cluster_configendpoint_config)
    * [`fn new()`](#fn-cluster_configendpoint_confignew)
  * [`obj cluster_config.gce_cluster_config`](#obj-cluster_configgce_cluster_config)
    * [`fn new()`](#fn-cluster_configgce_cluster_confignew)
    * [`obj cluster_config.gce_cluster_config.shielded_instance_config`](#obj-cluster_configgce_cluster_configshielded_instance_config)
      * [`fn new()`](#fn-cluster_configgce_cluster_configshielded_instance_confignew)
  * [`obj cluster_config.initialization_action`](#obj-cluster_configinitialization_action)
    * [`fn new()`](#fn-cluster_configinitialization_actionnew)
  * [`obj cluster_config.lifecycle_config`](#obj-cluster_configlifecycle_config)
    * [`fn new()`](#fn-cluster_configlifecycle_confignew)
  * [`obj cluster_config.master_config`](#obj-cluster_configmaster_config)
    * [`fn new()`](#fn-cluster_configmaster_confignew)
    * [`obj cluster_config.master_config.accelerators`](#obj-cluster_configmaster_configaccelerators)
      * [`fn new()`](#fn-cluster_configmaster_configacceleratorsnew)
    * [`obj cluster_config.master_config.disk_config`](#obj-cluster_configmaster_configdisk_config)
      * [`fn new()`](#fn-cluster_configmaster_configdisk_confignew)
  * [`obj cluster_config.metastore_config`](#obj-cluster_configmetastore_config)
    * [`fn new()`](#fn-cluster_configmetastore_confignew)
  * [`obj cluster_config.preemptible_worker_config`](#obj-cluster_configpreemptible_worker_config)
    * [`fn new()`](#fn-cluster_configpreemptible_worker_confignew)
    * [`obj cluster_config.preemptible_worker_config.disk_config`](#obj-cluster_configpreemptible_worker_configdisk_config)
      * [`fn new()`](#fn-cluster_configpreemptible_worker_configdisk_confignew)
  * [`obj cluster_config.security_config`](#obj-cluster_configsecurity_config)
    * [`fn new()`](#fn-cluster_configsecurity_confignew)
    * [`obj cluster_config.security_config.kerberos_config`](#obj-cluster_configsecurity_configkerberos_config)
      * [`fn new()`](#fn-cluster_configsecurity_configkerberos_confignew)
  * [`obj cluster_config.software_config`](#obj-cluster_configsoftware_config)
    * [`fn new()`](#fn-cluster_configsoftware_confignew)
  * [`obj cluster_config.worker_config`](#obj-cluster_configworker_config)
    * [`fn new()`](#fn-cluster_configworker_confignew)
    * [`obj cluster_config.worker_config.accelerators`](#obj-cluster_configworker_configaccelerators)
      * [`fn new()`](#fn-cluster_configworker_configacceleratorsnew)
    * [`obj cluster_config.worker_config.disk_config`](#obj-cluster_configworker_configdisk_config)
      * [`fn new()`](#fn-cluster_configworker_configdisk_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_dataproc_cluster.new` injects a new `google-beta_google_dataproc_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_dataproc_cluster.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_dataproc_cluster` using the reference:

    $._ref.google-beta_google_dataproc_cluster.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_dataproc_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `graceful_decommission_timeout` (`string`): The timeout duration which allows graceful decomissioning when you change the number of worker nodes directly through a terraform apply When `null`, the `graceful_decommission_timeout` field will be omitted from the resulting object.
  - `labels` (`obj`): The list of labels (key/value pairs) to be applied to instances in the cluster. GCP generates some itself including goog-dataproc-cluster-name which is the name of the cluster. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the cluster, unique within the project and zone.
  - `project` (`string`): The ID of the project in which the cluster will exist. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the cluster and associated nodes will be created in. Defaults to global. When `null`, the `region` field will be omitted from the resulting object.
  - `cluster_config` (`list[obj]`): Allows you to configure various aspects of the cluster. When `null`, the `cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.new](#fn-google_dataproc_clustercluster_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.timeouts.new](#fn-google_dataproc_clustertimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_dataproc_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataproc_cluster`
Terraform resource.

Unlike [google-beta.google_dataproc_cluster.new](#fn-google_dataproc_clusternew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `graceful_decommission_timeout` (`string`): The timeout duration which allows graceful decomissioning when you change the number of worker nodes directly through a terraform apply When `null`, the `graceful_decommission_timeout` field will be omitted from the resulting object.
  - `labels` (`obj`): The list of labels (key/value pairs) to be applied to instances in the cluster. GCP generates some itself including goog-dataproc-cluster-name which is the name of the cluster. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name of the cluster, unique within the project and zone.
  - `project` (`string`): The ID of the project in which the cluster will exist. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the cluster and associated nodes will be created in. Defaults to global. When `null`, the `region` field will be omitted from the resulting object.
  - `cluster_config` (`list[obj]`): Allows you to configure various aspects of the cluster. When `null`, the `cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.new](#fn-google_dataproc_clustercluster_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.timeouts.new](#fn-google_dataproc_clustertimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataproc_cluster` resource into the root Terraform configuration.


### fn withClusterConfig

```ts
withClusterConfig()
```

`google-beta.list[obj].withClusterConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withClusterConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_config` field.


### fn withClusterConfigMixin

```ts
withClusterConfigMixin()
```

`google-beta.list[obj].withClusterConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withClusterConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_config` field.


### fn withGracefulDecommissionTimeout

```ts
withGracefulDecommissionTimeout()
```

`google-beta.string.withGracefulDecommissionTimeout` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the graceful_decommission_timeout field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `graceful_decommission_timeout` field.


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


### fn withRegion

```ts
withRegion()
```

`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


## obj cluster_config



### fn cluster_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.new` constructs a new object with attributes and blocks configured for the `cluster_config`
Terraform sub block.



**Args**:
  - `staging_bucket` (`string`): The Cloud Storage staging bucket used to stage files, such as Hadoop jars, between client machines and the cluster. Note: If you don&#39;t explicitly specify a staging_bucket then GCP will auto create / assign one for you. However, you are not guaranteed an auto generated bucket which is solely dedicated to your cluster; it may be shared with other clusters in the same region/zone also choosing to use the auto generation option. When `null`, the `staging_bucket` field will be omitted from the resulting object.
  - `temp_bucket` (`string`): The Cloud Storage temp bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. Note: If you don&#39;t explicitly specify a temp_bucket then GCP will auto create / assign one for you. When `null`, the `temp_bucket` field will be omitted from the resulting object.
  - `autoscaling_config` (`list[obj]`): The autoscaling policy config associated with the cluster. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.autoscaling_config.new](#fn-cluster_configautoscaling_confignew) constructor.
  - `encryption_config` (`list[obj]`): The Customer managed encryption keys settings for the cluster. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.encryption_config.new](#fn-cluster_configencryption_confignew) constructor.
  - `endpoint_config` (`list[obj]`): The config settings for port access on the cluster. Structure defined below. When `null`, the `endpoint_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.endpoint_config.new](#fn-cluster_configendpoint_confignew) constructor.
  - `gce_cluster_config` (`list[obj]`): Common config settings for resources of Google Compute Engine cluster instances, applicable to all instances in the cluster. When `null`, the `gce_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.gce_cluster_config.new](#fn-cluster_configgce_cluster_confignew) constructor.
  - `initialization_action` (`list[obj]`): Commands to execute on each node after config is completed. You can specify multiple versions of these. When `null`, the `initialization_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.initialization_action.new](#fn-cluster_configinitialization_actionnew) constructor.
  - `lifecycle_config` (`list[obj]`): The settings for auto deletion cluster schedule. When `null`, the `lifecycle_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.lifecycle_config.new](#fn-cluster_configlifecycle_confignew) constructor.
  - `master_config` (`list[obj]`): The Google Compute Engine config settings for the master/worker instances in a cluster. When `null`, the `master_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.master_config.new](#fn-cluster_configmaster_confignew) constructor.
  - `metastore_config` (`list[obj]`): Specifies a Metastore configuration. When `null`, the `metastore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.metastore_config.new](#fn-cluster_configmetastore_confignew) constructor.
  - `preemptible_worker_config` (`list[obj]`): The Google Compute Engine config settings for the additional (aka preemptible) instances in a cluster. When `null`, the `preemptible_worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.preemptible_worker_config.new](#fn-cluster_configpreemptible_worker_confignew) constructor.
  - `security_config` (`list[obj]`): Security related configuration. When `null`, the `security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.security_config.new](#fn-cluster_configsecurity_confignew) constructor.
  - `software_config` (`list[obj]`): The config settings for software inside the cluster. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.software_config.new](#fn-cluster_configsoftware_confignew) constructor.
  - `worker_config` (`list[obj]`): The Google Compute Engine config settings for the master/worker instances in a cluster. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.worker_config.new](#fn-cluster_configworker_confignew) constructor.

**Returns**:
  - An attribute object that represents the `cluster_config` sub block.


## obj cluster_config.autoscaling_config



### fn cluster_config.autoscaling_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.autoscaling_config.new` constructs a new object with attributes and blocks configured for the `autoscaling_config`
Terraform sub block.



**Args**:
  - `policy_uri` (`string`): The autoscaling policy used by the cluster.

**Returns**:
  - An attribute object that represents the `autoscaling_config` sub block.


## obj cluster_config.encryption_config



### fn cluster_config.encryption_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj cluster_config.endpoint_config



### fn cluster_config.endpoint_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.endpoint_config.new` constructs a new object with attributes and blocks configured for the `endpoint_config`
Terraform sub block.



**Args**:
  - `enable_http_port_access` (`bool`): The flag to enable http access to specific ports on the cluster from external sources (aka Component Gateway). Defaults to false.

**Returns**:
  - An attribute object that represents the `endpoint_config` sub block.


## obj cluster_config.gce_cluster_config



### fn cluster_config.gce_cluster_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.gce_cluster_config.new` constructs a new object with attributes and blocks configured for the `gce_cluster_config`
Terraform sub block.



**Args**:
  - `internal_ip_only` (`bool`): By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. If set to true, all instances in the cluster will only have internal IP addresses. Note: Private Google Access (also known as privateIpGoogleAccess) must be enabled on the subnetwork that the cluster will be launched in. When `null`, the `internal_ip_only` field will be omitted from the resulting object.
  - `metadata` (`obj`): A map of the Compute Engine metadata entries to add to all instances When `null`, the `metadata` field will be omitted from the resulting object.
  - `network` (`string`): The name or self_link of the Google Compute Engine network to the cluster will be part of. Conflicts with subnetwork. If neither is specified, this defaults to the &#34;default&#34; network. When `null`, the `network` field will be omitted from the resulting object.
  - `service_account` (`string`): The service account to be used by the Node VMs. If not specified, the &#34;default&#34; service account is used. When `null`, the `service_account` field will be omitted from the resulting object.
  - `service_account_scopes` (`list`): The set of Google API scopes to be made available on all of the node VMs under the service_account specified. These can be either FQDNs, or scope aliases. When `null`, the `service_account_scopes` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The name or self_link of the Google Compute Engine subnetwork the cluster will be part of. Conflicts with network. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `tags` (`list`): The list of instance tags applied to instances in the cluster. Tags are used to identify valid sources or targets for network firewalls. When `null`, the `tags` field will be omitted from the resulting object.
  - `zone` (`string`): The GCP zone where your data is stored and used (i.e. where the master and the worker nodes will be created in). If region is set to &#39;global&#39; (default) then zone is mandatory, otherwise GCP is able to make use of Auto Zone Placement to determine this automatically for you. Note: This setting additionally determines and restricts which computing resources are available for use with other configs such as cluster_config.master_config.machine_type and cluster_config.worker_config.machine_type. When `null`, the `zone` field will be omitted from the resulting object.
  - `shielded_instance_config` (`list[obj]`): Shielded Instance Config for clusters using Compute Engine Shielded VMs. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.gce_cluster_config.shielded_instance_config.new](#fn-gce_cluster_configshielded_instance_confignew) constructor.

**Returns**:
  - An attribute object that represents the `gce_cluster_config` sub block.


## obj cluster_config.gce_cluster_config.shielded_instance_config



### fn cluster_config.gce_cluster_config.shielded_instance_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.gce_cluster_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Defines whether instances have integrity monitoring enabled. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Defines whether instances have Secure Boot enabled. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.
  - `enable_vtpm` (`bool`): Defines whether instances have the vTPM enabled. When `null`, the `enable_vtpm` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj cluster_config.initialization_action



### fn cluster_config.initialization_action.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.initialization_action.new` constructs a new object with attributes and blocks configured for the `initialization_action`
Terraform sub block.



**Args**:
  - `script` (`string`): The script to be executed during initialization of the cluster. The script must be a GCS file with a gs:// prefix.
  - `timeout_sec` (`number`): The maximum duration (in seconds) which script is allowed to take to execute its action. GCP will default to a predetermined computed value if not set (currently 300). When `null`, the `timeout_sec` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `initialization_action` sub block.


## obj cluster_config.lifecycle_config



### fn cluster_config.lifecycle_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.lifecycle_config.new` constructs a new object with attributes and blocks configured for the `lifecycle_config`
Terraform sub block.



**Args**:
  - `auto_delete_time` (`string`): The time when cluster will be auto-deleted. A timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `auto_delete_time` field will be omitted from the resulting object.
  - `idle_delete_ttl` (`string`): The duration to keep the cluster alive while idling (no jobs running). After this TTL, the cluster will be deleted. Valid range: [10m, 14d]. When `null`, the `idle_delete_ttl` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `lifecycle_config` sub block.


## obj cluster_config.master_config



### fn cluster_config.master_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.master_config.new` constructs a new object with attributes and blocks configured for the `master_config`
Terraform sub block.



**Args**:
  - `image_uri` (`string`): The URI for the image to use for this master/worker When `null`, the `image_uri` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Google Compute Engine machine type to create for the master/worker When `null`, the `machine_type` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): The name of a minimum generation of CPU family for the master/worker. If not specified, GCP will default to a predetermined computed value for each zone. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `num_instances` (`number`): Specifies the number of master/worker nodes to create. If not specified, GCP will default to a predetermined computed value. When `null`, the `num_instances` field will be omitted from the resulting object.
  - `accelerators` (`list[obj]`): The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.master_config.accelerators.new](#fn-master_configacceleratorsnew) constructor.
  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.master_config.disk_config.new](#fn-master_configdisk_confignew) constructor.

**Returns**:
  - An attribute object that represents the `master_config` sub block.


## obj cluster_config.master_config.accelerators



### fn cluster_config.master_config.accelerators.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.master_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`
Terraform sub block.



**Args**:
  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8.
  - `accelerator_type` (`string`): The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80.

**Returns**:
  - An attribute object that represents the `accelerators` sub block.


## obj cluster_config.master_config.disk_config



### fn cluster_config.master_config.disk_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.master_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`
Terraform sub block.



**Args**:
  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.
  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disk_config` sub block.


## obj cluster_config.metastore_config



### fn cluster_config.metastore_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.metastore_config.new` constructs a new object with attributes and blocks configured for the `metastore_config`
Terraform sub block.



**Args**:
  - `dataproc_metastore_service` (`string`): Resource name of an existing Dataproc Metastore service.

**Returns**:
  - An attribute object that represents the `metastore_config` sub block.


## obj cluster_config.preemptible_worker_config



### fn cluster_config.preemptible_worker_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.preemptible_worker_config.new` constructs a new object with attributes and blocks configured for the `preemptible_worker_config`
Terraform sub block.



**Args**:
  - `num_instances` (`number`): Specifies the number of preemptible nodes to create. Defaults to 0. When `null`, the `num_instances` field will be omitted from the resulting object.
  - `preemptibility` (`string`): Specifies the preemptibility of the secondary nodes. Defaults to PREEMPTIBLE. When `null`, the `preemptibility` field will be omitted from the resulting object.
  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.preemptible_worker_config.disk_config.new](#fn-preemptible_worker_configdisk_confignew) constructor.

**Returns**:
  - An attribute object that represents the `preemptible_worker_config` sub block.


## obj cluster_config.preemptible_worker_config.disk_config



### fn cluster_config.preemptible_worker_config.disk_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.preemptible_worker_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`
Terraform sub block.



**Args**:
  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each preemptible worker node, specified in GB. The smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each preemptible worker node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.
  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each preemptible worker node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disk_config` sub block.


## obj cluster_config.security_config



### fn cluster_config.security_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.security_config.new` constructs a new object with attributes and blocks configured for the `security_config`
Terraform sub block.



**Args**:
  - `kerberos_config` (`list[obj]`): Kerberos related configuration When `null`, the `kerberos_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.security_config.kerberos_config.new](#fn-security_configkerberos_confignew) constructor.

**Returns**:
  - An attribute object that represents the `security_config` sub block.


## obj cluster_config.security_config.kerberos_config



### fn cluster_config.security_config.kerberos_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.security_config.kerberos_config.new` constructs a new object with attributes and blocks configured for the `kerberos_config`
Terraform sub block.



**Args**:
  - `cross_realm_trust_admin_server` (`string`): The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship. When `null`, the `cross_realm_trust_admin_server` field will be omitted from the resulting object.
  - `cross_realm_trust_kdc` (`string`): The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship. When `null`, the `cross_realm_trust_kdc` field will be omitted from the resulting object.
  - `cross_realm_trust_realm` (`string`): The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust. When `null`, the `cross_realm_trust_realm` field will be omitted from the resulting object.
  - `cross_realm_trust_shared_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster
Kerberos realm and the remote trusted realm, in a cross realm trust relationship. When `null`, the `cross_realm_trust_shared_password_uri` field will be omitted from the resulting object.
  - `enable_kerberos` (`bool`): Flag to indicate whether to Kerberize the cluster. When `null`, the `enable_kerberos` field will be omitted from the resulting object.
  - `kdc_db_key_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database. When `null`, the `kdc_db_key_uri` field will be omitted from the resulting object.
  - `key_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `key_password_uri` field will be omitted from the resulting object.
  - `keystore_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing
the password to the user provided keystore. For the self-signed certificate, this password is generated
by Dataproc When `null`, the `keystore_password_uri` field will be omitted from the resulting object.
  - `keystore_uri` (`string`): The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. When `null`, the `keystore_uri` field will be omitted from the resulting object.
  - `kms_key_uri` (`string`): The uri of the KMS key used to encrypt various sensitive files.
  - `realm` (`string`): The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of hostnames will be the realm. When `null`, the `realm` field will be omitted from the resulting object.
  - `root_principal_password_uri` (`string`): The cloud Storage URI of a KMS encrypted file containing the root principal password.
  - `tgt_lifetime_hours` (`number`): The lifetime of the ticket granting ticket, in hours. When `null`, the `tgt_lifetime_hours` field will be omitted from the resulting object.
  - `truststore_password_uri` (`string`): The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `truststore_password_uri` field will be omitted from the resulting object.
  - `truststore_uri` (`string`): The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. When `null`, the `truststore_uri` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `kerberos_config` sub block.


## obj cluster_config.software_config



### fn cluster_config.software_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.software_config.new` constructs a new object with attributes and blocks configured for the `software_config`
Terraform sub block.



**Args**:
  - `image_version` (`string`): The Cloud Dataproc image version to use for the cluster - this controls the sets of software versions installed onto the nodes when you create clusters. If not specified, defaults to the latest version. When `null`, the `image_version` field will be omitted from the resulting object.
  - `optional_components` (`list`): The set of optional components to activate on the cluster. When `null`, the `optional_components` field will be omitted from the resulting object.
  - `override_properties` (`obj`): A list of override and additional properties (key/value pairs) used to modify various aspects of the common configuration files used when creating a cluster. When `null`, the `override_properties` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `software_config` sub block.


## obj cluster_config.worker_config



### fn cluster_config.worker_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.worker_config.new` constructs a new object with attributes and blocks configured for the `worker_config`
Terraform sub block.



**Args**:
  - `image_uri` (`string`): The URI for the image to use for this master/worker When `null`, the `image_uri` field will be omitted from the resulting object.
  - `machine_type` (`string`): The name of a Google Compute Engine machine type to create for the master/worker When `null`, the `machine_type` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): The name of a minimum generation of CPU family for the master/worker. If not specified, GCP will default to a predetermined computed value for each zone. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `num_instances` (`number`): Specifies the number of master/worker nodes to create. If not specified, GCP will default to a predetermined computed value. When `null`, the `num_instances` field will be omitted from the resulting object.
  - `accelerators` (`list[obj]`): The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.worker_config.accelerators.new](#fn-worker_configacceleratorsnew) constructor.
  - `disk_config` (`list[obj]`): Disk Config When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataproc_cluster.cluster_config.worker_config.disk_config.new](#fn-worker_configdisk_confignew) constructor.

**Returns**:
  - An attribute object that represents the `worker_config` sub block.


## obj cluster_config.worker_config.accelerators



### fn cluster_config.worker_config.accelerators.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.worker_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`
Terraform sub block.



**Args**:
  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8.
  - `accelerator_type` (`string`): The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80.

**Returns**:
  - An attribute object that represents the `accelerators` sub block.


## obj cluster_config.worker_config.disk_config



### fn cluster_config.worker_config.disk_config.new

```ts
new()
```


`google-beta.google_dataproc_cluster.cluster_config.worker_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`
Terraform sub block.



**Args**:
  - `boot_disk_size_gb` (`number`): Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `boot_disk_type` (`string`): The disk type of the primary disk attached to each node. Such as &#34;pd-ssd&#34; or &#34;pd-standard&#34;. Defaults to &#34;pd-standard&#34;. When `null`, the `boot_disk_type` field will be omitted from the resulting object.
  - `num_local_ssds` (`number`): The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. When `null`, the `num_local_ssds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disk_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_dataproc_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
