---
permalink: /google_dataflow_flex_template_job/
---

# google_dataflow_flex_template_job

`google_dataflow_flex_template_job` represents the `google-beta_google_dataflow_flex_template_job` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withContainerSpecGcsPath()`](#fn-withcontainerspecgcspath)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withOnDelete()`](#fn-withondelete)
* [`fn withParameters()`](#fn-withparameters)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSkipWaitOnJobTermination()`](#fn-withskipwaitonjobtermination)

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
  - `container_spec_gcs_path` (`string`): 
  - `labels` (`obj`):  When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): 
  - `on_delete` (`string`):  When `null`, the `on_delete` field will be omitted from the resulting object.
  - `parameters` (`obj`):  When `null`, the `parameters` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.
  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.

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
  - `container_spec_gcs_path` (`string`): 
  - `labels` (`obj`):  When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): 
  - `on_delete` (`string`):  When `null`, the `on_delete` field will be omitted from the resulting object.
  - `parameters` (`obj`):  When `null`, the `parameters` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the created job should run. When `null`, the `region` field will be omitted from the resulting object.
  - `skip_wait_on_job_termination` (`bool`): If true, treat DRAINING and CANCELLING as terminal job states and do not wait for further changes before removing from terraform state and moving on. WARNING: this will lead to job name conflicts if you do not ensure that the job names are different, e.g. by embedding a release ID or by using a random_id. When `null`, the `skip_wait_on_job_termination` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataflow_flex_template_job` resource into the root Terraform configuration.


### fn withContainerSpecGcsPath

```ts
withContainerSpecGcsPath()
```

`google-beta.string.withContainerSpecGcsPath` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the container_spec_gcs_path field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `container_spec_gcs_path` field.


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


### fn withSkipWaitOnJobTermination

```ts
withSkipWaitOnJobTermination()
```

`google-beta.bool.withSkipWaitOnJobTermination` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the skip_wait_on_job_termination field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `skip_wait_on_job_termination` field.
