---
permalink: /google_clouddeploy_delivery_pipeline/
---

# google_clouddeploy_delivery_pipeline

`google_clouddeploy_delivery_pipeline` represents the `google-beta_google_clouddeploy_delivery_pipeline` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSerialPipeline()`](#fn-withserialpipeline)
* [`fn withSerialPipelineMixin()`](#fn-withserialpipelinemixin)
* [`fn withSuspended()`](#fn-withsuspended)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj serial_pipeline`](#obj-serial_pipeline)
  * [`fn new()`](#fn-serial_pipelinenew)
  * [`obj serial_pipeline.stages`](#obj-serial_pipelinestages)
    * [`fn new()`](#fn-serial_pipelinestagesnew)
    * [`obj serial_pipeline.stages.strategy`](#obj-serial_pipelinestagesstrategy)
      * [`fn new()`](#fn-serial_pipelinestagesstrategynew)
      * [`obj serial_pipeline.stages.strategy.standard`](#obj-serial_pipelinestagesstrategystandard)
        * [`fn new()`](#fn-serial_pipelinestagesstrategystandardnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_clouddeploy_delivery_pipeline.new` injects a new `google-beta_google_clouddeploy_delivery_pipeline` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_clouddeploy_delivery_pipeline.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_clouddeploy_delivery_pipeline` using the reference:

    $._ref.google-beta_google_clouddeploy_delivery_pipeline.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_clouddeploy_delivery_pipeline.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.
  - `description` (`string`): Description of the `DeliveryPipeline`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Name of the `DeliveryPipeline`. Format is [a-z][a-z0-9\-]{0,62}.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `suspended` (`bool`): When suspended, no new releases or rollouts can be created, but in-progress ones will complete. When `null`, the `suspended` field will be omitted from the resulting object.
  - `serial_pipeline` (`list[obj]`): SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. When `null`, the `serial_pipeline` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.new](#fn-serial_pipelinenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_delivery_pipeline.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_clouddeploy_delivery_pipeline.newAttrs` constructs a new object with attributes and blocks configured for the `google_clouddeploy_delivery_pipeline`
Terraform resource.

Unlike [google-beta.google_clouddeploy_delivery_pipeline.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.
  - `description` (`string`): Description of the `DeliveryPipeline`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Name of the `DeliveryPipeline`. Format is [a-z][a-z0-9\-]{0,62}.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `suspended` (`bool`): When suspended, no new releases or rollouts can be created, but in-progress ones will complete. When `null`, the `suspended` field will be omitted from the resulting object.
  - `serial_pipeline` (`list[obj]`): SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. When `null`, the `serial_pipeline` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.new](#fn-serial_pipelinenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_delivery_pipeline.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_clouddeploy_delivery_pipeline` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google-beta.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


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


### fn withLocation

```ts
withLocation()
```

`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


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


### fn withSerialPipeline

```ts
withSerialPipeline()
```

`google-beta.list[obj].withSerialPipeline` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the serial_pipeline field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withSerialPipelineMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `serial_pipeline` field.


### fn withSerialPipelineMixin

```ts
withSerialPipelineMixin()
```

`google-beta.list[obj].withSerialPipelineMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the serial_pipeline field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSerialPipeline](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `serial_pipeline` field.


### fn withSuspended

```ts
withSuspended()
```

`google-beta.bool.withSuspended` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the suspended field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `suspended` field.


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


## obj serial_pipeline



### fn serial_pipeline.new

```ts
new()
```


`google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.new` constructs a new object with attributes and blocks configured for the `serial_pipeline`
Terraform sub block.



**Args**:
  - `stages` (`list[obj]`): Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow. When `null`, the `stages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.stages.new](#fn-serial_pipelinestagesnew) constructor.

**Returns**:
  - An attribute object that represents the `serial_pipeline` sub block.


## obj serial_pipeline.stages



### fn serial_pipeline.stages.new

```ts
new()
```


`google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.stages.new` constructs a new object with attributes and blocks configured for the `stages`
Terraform sub block.



**Args**:
  - `profiles` (`list`): Skaffold profiles to use when rendering the manifest for this stage&#39;s `Target`. When `null`, the `profiles` field will be omitted from the resulting object.
  - `target_id` (`string`): The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`. When `null`, the `target_id` field will be omitted from the resulting object.
  - `strategy` (`list[obj]`): Optional. The strategy to use for a `Rollout` to this stage. When `null`, the `strategy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.new](#fn-serial_pipelineserial_pipelinestrategynew) constructor.

**Returns**:
  - An attribute object that represents the `stages` sub block.


## obj serial_pipeline.stages.strategy



### fn serial_pipeline.stages.strategy.new

```ts
new()
```


`google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.new` constructs a new object with attributes and blocks configured for the `strategy`
Terraform sub block.



**Args**:
  - `standard` (`list[obj]`): Standard deployment strategy executes a single deploy and allows verifying the deployment. When `null`, the `standard` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.standard.new](#fn-serial_pipelineserial_pipelinestagesstandardnew) constructor.

**Returns**:
  - An attribute object that represents the `strategy` sub block.


## obj serial_pipeline.stages.strategy.standard



### fn serial_pipeline.stages.strategy.standard.new

```ts
new()
```


`google-beta.google_clouddeploy_delivery_pipeline.serial_pipeline.stages.strategy.standard.new` constructs a new object with attributes and blocks configured for the `standard`
Terraform sub block.



**Args**:
  - `verify` (`bool`): Whether to verify a deployment. When `null`, the `verify` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `standard` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_clouddeploy_delivery_pipeline.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
