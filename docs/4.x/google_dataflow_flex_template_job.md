---
permalink: /google_dataflow_flex_template_job/
---

# google_dataflow_flex_template_job

`google_dataflow_flex_template_job` represents the `google-beta_google_dataflow_flex_template_job` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdditionalExperiments()`](#fn-withadditionalexperiments)
* [`fn withAutoscalingAlgorithm()`](#fn-withautoscalingalgorithm)
* [`fn withContainerSpecGcsPath()`](#fn-withcontainerspecgcspath)
* [`fn withEnableStreamingEngine()`](#fn-withenablestreamingengine)
* [`fn withIpConfiguration()`](#fn-withipconfiguration)
* [`fn withKmsKeyName()`](#fn-withkmskeyname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLauncherMachineType()`](#fn-withlaunchermachinetype)
* [`fn withMachineType()`](#fn-withmachinetype)
* [`fn withMaxWorkers()`](#fn-withmaxworkers)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNumWorkers()`](#fn-withnumworkers)
* [`fn withOnDelete()`](#fn-withondelete)
* [`fn withParameters()`](#fn-withparameters)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSdkContainerImage()`](#fn-withsdkcontainerimage)
* [`fn withServiceAccountEmail()`](#fn-withserviceaccountemail)
* [`fn withSkipWaitOnJobTermination()`](#fn-withskipwaitonjobtermination)
* [`fn withStagingLocation()`](#fn-withstaginglocation)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTempLocation()`](#fn-withtemplocation)
* [`fn withTransformNameMapping()`](#fn-withtransformnamemapping)

## Fields

### fn new

```ts
new()
```


`google-beta.google_dataflow_flex_template_job.new` injects a new `google-beta_google_dataflow_flex_template_job` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_dataflow_flex_template_job.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_dataflow_flex_template_job` using the reference:

    $._ref.google-beta_google_dataflow_flex_template_job.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_dataflow_flex_template_job.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `additional_experiments` (`list`): List of experiments that should be used by the job. An example value is [&#34;enable_stackdriver_agent_metrics&#34;]. When `null`, the `additional_experiments` field will be omitted from the resulting object.
  - `autoscaling_algorithm` (`string`): The algorithm to use for autoscaling When `null`, the `autoscaling_algorithm` field will be omitted from the resulting object.
  - `container_spec_gcs_path` (`string`): Set the `container_spec_gcs_path` field on the resulting resource block.
  - `enable_streaming_engine` (`bool`): Indicates if the job should use the streaming engine feature. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.
  - `ip_configuration` (`string`): The configuration for VM IPs. Options are &#34;WORKER_IP_PUBLIC&#34; or &#34;WORKER_IP_PRIVATE&#34;. When `null`, the `ip_configuration` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `launcher_machine_type` (`string`): The machine type to use for launching the job. The default is n1-standard-1. When `null`, the `launcher_machine_type` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to use for the job. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `max_workers` (`number`): The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. When `null`, the `max_workers` field will be omitted from the resulting object.
  - `name` (`string`): Set the `name` field on the resulting resource block.
  - `network` (`string`): The network to which VMs will be assigned. If it is not provided, &#34;default&#34; will be used. When `null`, the `network` field will be omitted from the resulting object.
  - `num_workers` (`number`): The initial number of Google Compute Engine instances for the job. When `null`, the `num_workers` field will be omitted from the resulting object.
  - `on_delete` (`string`): Set the `on_delete` field on the resulting resource block. When `null`, the `on_delete` field will be omitted from the resulting object.
  - `parameters` (`obj`): Set the `parameters` field on the resulting resource block. When `null`, the `parameters` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.
  - `sdk_container_image` (`string`): Docker registry location of container image to use for the &#39;worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines. When `null`, the `sdk_container_image` field will be omitted from the resulting object.
  - `service_account_email` (`string`): The Service Account email used to create the job. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.
  - `staging_location` (`string`): The Cloud Storage path to use for staging files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `staging_location` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The subnetwork to which VMs will be assigned. Should be of the form &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `temp_location` (`string`): The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `temp_location` field will be omitted from the resulting object.
  - `transform_name_mapping` (`obj`): Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. When `null`, the `transform_name_mapping` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_dataflow_flex_template_job.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataflow_flex_template_job`
Terraform resource.

Unlike [google-beta.google_dataflow_flex_template_job.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `additional_experiments` (`list`): List of experiments that should be used by the job. An example value is [&#34;enable_stackdriver_agent_metrics&#34;]. When `null`, the `additional_experiments` field will be omitted from the resulting object.
  - `autoscaling_algorithm` (`string`): The algorithm to use for autoscaling When `null`, the `autoscaling_algorithm` field will be omitted from the resulting object.
  - `container_spec_gcs_path` (`string`): Set the `container_spec_gcs_path` field on the resulting object.
  - `enable_streaming_engine` (`bool`): Indicates if the job should use the streaming engine feature. When `null`, the `enable_streaming_engine` field will be omitted from the resulting object.
  - `ip_configuration` (`string`): The configuration for VM IPs. Options are &#34;WORKER_IP_PUBLIC&#34; or &#34;WORKER_IP_PRIVATE&#34;. When `null`, the `ip_configuration` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. NOTE: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `launcher_machine_type` (`string`): The machine type to use for launching the job. The default is n1-standard-1. When `null`, the `launcher_machine_type` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to use for the job. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `max_workers` (`number`): The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. When `null`, the `max_workers` field will be omitted from the resulting object.
  - `name` (`string`): Set the `name` field on the resulting object.
  - `network` (`string`): The network to which VMs will be assigned. If it is not provided, &#34;default&#34; will be used. When `null`, the `network` field will be omitted from the resulting object.
  - `num_workers` (`number`): The initial number of Google Compute Engine instances for the job. When `null`, the `num_workers` field will be omitted from the resulting object.
  - `on_delete` (`string`): Set the `on_delete` field on the resulting object. When `null`, the `on_delete` field will be omitted from the resulting object.
  - `parameters` (`obj`): Set the `parameters` field on the resulting object. When `null`, the `parameters` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.
  - `sdk_container_image` (`string`): Docker registry location of container image to use for the &#39;worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines. When `null`, the `sdk_container_image` field will be omitted from the resulting object.
  - `service_account_email` (`string`): The Service Account email used to create the job. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.
  - `staging_location` (`string`): The Cloud Storage path to use for staging files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `staging_location` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The subnetwork to which VMs will be assigned. Should be of the form &#34;regions/REGION/subnetworks/SUBNETWORK&#34;. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `temp_location` (`string`): The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. When `null`, the `temp_location` field will be omitted from the resulting object.
  - `transform_name_mapping` (`obj`): Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. When `null`, the `transform_name_mapping` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataflow_flex_template_job` resource into the root Terraform configuration.


### fn withAdditionalExperiments

```ts
withAdditionalExperiments()
```

`google-beta.list.withAdditionalExperiments` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the additional_experiments field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `additional_experiments` field.


### fn withAutoscalingAlgorithm

```ts
withAutoscalingAlgorithm()
```

`google-beta.string.withAutoscalingAlgorithm` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the autoscaling_algorithm field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `autoscaling_algorithm` field.


### fn withContainerSpecGcsPath

```ts
withContainerSpecGcsPath()
```

`google-beta.string.withContainerSpecGcsPath` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the container_spec_gcs_path field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `container_spec_gcs_path` field.


### fn withEnableStreamingEngine

```ts
withEnableStreamingEngine()
```

`google-beta.bool.withEnableStreamingEngine` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_streaming_engine field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_streaming_engine` field.


### fn withIpConfiguration

```ts
withIpConfiguration()
```

`google-beta.string.withIpConfiguration` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_configuration field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_configuration` field.


### fn withKmsKeyName

```ts
withKmsKeyName()
```

`google-beta.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key_name` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLauncherMachineType

```ts
withLauncherMachineType()
```

`google-beta.string.withLauncherMachineType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the launcher_machine_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `launcher_machine_type` field.


### fn withMachineType

```ts
withMachineType()
```

`google-beta.string.withMachineType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the machine_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `machine_type` field.


### fn withMaxWorkers

```ts
withMaxWorkers()
```

`google-beta.number.withMaxWorkers` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_workers field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_workers` field.


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


### fn withNumWorkers

```ts
withNumWorkers()
```

`google-beta.number.withNumWorkers` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the num_workers field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `num_workers` field.


### fn withOnDelete

```ts
withOnDelete()
```

`google-beta.string.withOnDelete` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the on_delete field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `on_delete` field.


### fn withParameters

```ts
withParameters()
```

`google-beta.obj.withParameters` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the parameters field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `parameters` field.


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


### fn withSdkContainerImage

```ts
withSdkContainerImage()
```

`google-beta.string.withSdkContainerImage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the sdk_container_image field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `sdk_container_image` field.


### fn withServiceAccountEmail

```ts
withServiceAccountEmail()
```

`google-beta.string.withServiceAccountEmail` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account_email field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account_email` field.


### fn withSkipWaitOnJobTermination

```ts
withSkipWaitOnJobTermination()
```

`google-beta.bool.withSkipWaitOnJobTermination` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the skip_wait_on_job_termination field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `skip_wait_on_job_termination` field.


### fn withStagingLocation

```ts
withStagingLocation()
```

`google-beta.string.withStagingLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the staging_location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `staging_location` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google-beta.string.withSubnetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnetwork` field.


### fn withTempLocation

```ts
withTempLocation()
```

`google-beta.string.withTempLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the temp_location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `temp_location` field.


### fn withTransformNameMapping

```ts
withTransformNameMapping()
```

`google-beta.obj.withTransformNameMapping` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the transform_name_mapping field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `transform_name_mapping` field.
