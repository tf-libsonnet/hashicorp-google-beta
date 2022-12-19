---
permalink: /google_service_usage_consumer_quota_override/
---

# google_service_usage_consumer_quota_override

`google_service_usage_consumer_quota_override` represents the `google-beta_google_service_usage_consumer_quota_override` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDimensions()`](#fn-withdimensions)
* [`fn withForce()`](#fn-withforce)
* [`fn withLimit()`](#fn-withlimit)
* [`fn withMetric()`](#fn-withmetric)
* [`fn withOverrideValue()`](#fn-withoverridevalue)
* [`fn withProject()`](#fn-withproject)
* [`fn withService()`](#fn-withservice)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_service_usage_consumer_quota_override.new` injects a new `google-beta_google_service_usage_consumer_quota_override` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_service_usage_consumer_quota_override.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_service_usage_consumer_quota_override` using the reference:

    $._ref.google-beta_google_service_usage_consumer_quota_override.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_service_usage_consumer_quota_override.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dimensions` (`obj`): If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit. When `null`, the `dimensions` field will be omitted from the resulting object.
  - `force` (`bool`): If the new quota would decrease the existing quota by more than 10%, the request is rejected.
If &#39;force&#39; is &#39;true&#39;, that safety check is ignored. When `null`, the `force` field will be omitted from the resulting object.
  - `limit` (`string`): The limit on the metric, e.g. &#39;/project/region&#39;.

~&gt; Make sure that &#39;limit&#39; is in a format that doesn&#39;t start with &#39;1/&#39; or contain curly braces.
E.g. use &#39;/project/user&#39; instead of &#39;1/{project}/{user}&#39;.
  - `metric` (`string`): The metric that should be limited, e.g. &#39;compute.googleapis.com/cpus&#39;.
  - `override_value` (`string`): The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): The service that the metrics belong to, e.g. &#39;compute.googleapis.com&#39;.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_service_usage_consumer_quota_override.timeouts.new](#fn-google_service_usage_consumer_quota_overridetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_service_usage_consumer_quota_override.newAttrs` constructs a new object with attributes and blocks configured for the `google_service_usage_consumer_quota_override`
Terraform resource.

Unlike [google-beta.google_service_usage_consumer_quota_override.new](#fn-google_service_usage_consumer_quota_overridenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dimensions` (`obj`): If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit. When `null`, the `dimensions` field will be omitted from the resulting object.
  - `force` (`bool`): If the new quota would decrease the existing quota by more than 10%, the request is rejected.
If &#39;force&#39; is &#39;true&#39;, that safety check is ignored. When `null`, the `force` field will be omitted from the resulting object.
  - `limit` (`string`): The limit on the metric, e.g. &#39;/project/region&#39;.

~&gt; Make sure that &#39;limit&#39; is in a format that doesn&#39;t start with &#39;1/&#39; or contain curly braces.
E.g. use &#39;/project/user&#39; instead of &#39;1/{project}/{user}&#39;.
  - `metric` (`string`): The metric that should be limited, e.g. &#39;compute.googleapis.com/cpus&#39;.
  - `override_value` (`string`): The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service` (`string`): The service that the metrics belong to, e.g. &#39;compute.googleapis.com&#39;.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_service_usage_consumer_quota_override.timeouts.new](#fn-google_service_usage_consumer_quota_overridetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_service_usage_consumer_quota_override` resource into the root Terraform configuration.


### fn withDimensions

```ts
withDimensions()
```

`google-beta.obj.withDimensions` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the dimensions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `dimensions` field.


### fn withForce

```ts
withForce()
```

`google-beta.bool.withForce` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the force field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `force` field.


### fn withLimit

```ts
withLimit()
```

`google-beta.string.withLimit` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the limit field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `limit` field.


### fn withMetric

```ts
withMetric()
```

`google-beta.string.withMetric` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the metric field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `metric` field.


### fn withOverrideValue

```ts
withOverrideValue()
```

`google-beta.string.withOverrideValue` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the override_value field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `override_value` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withService

```ts
withService()
```

`google-beta.string.withService` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service` field.


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


`google-beta.google_service_usage_consumer_quota_override.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
