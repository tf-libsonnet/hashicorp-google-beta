---
permalink: /google_bigquery_reservation/
---

# google_bigquery_reservation

`google_bigquery_reservation` represents the `google-beta_google_bigquery_reservation` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoscale()`](#fn-withautoscale)
* [`fn withAutoscaleMixin()`](#fn-withautoscalemixin)
* [`fn withConcurrency()`](#fn-withconcurrency)
* [`fn withEdition()`](#fn-withedition)
* [`fn withIgnoreIdleSlots()`](#fn-withignoreidleslots)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMultiRegionAuxiliary()`](#fn-withmultiregionauxiliary)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSlotCapacity()`](#fn-withslotcapacity)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj autoscale`](#obj-autoscale)
  * [`fn new()`](#fn-autoscalenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_bigquery_reservation.new` injects a new `google-beta_google_bigquery_reservation` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_bigquery_reservation.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_bigquery_reservation` using the reference:

    $._ref.google-beta_google_bigquery_reservation.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_bigquery_reservation.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `concurrency` (`number`): Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size. When `null`, the `concurrency` field will be omitted from the resulting object.
  - `edition` (`string`): The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS When `null`, the `edition` field will be omitted from the resulting object.
  - `ignore_idle_slots` (`bool`): If false, any query using this reservation will use idle slots from other reservations within
the same admin project. If true, a query using this reservation will execute with the slot
capacity specified above at most. When `null`, the `ignore_idle_slots` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.
  - `multi_region_auxiliary` (`bool`): Applicable only for reservations located within one of the BigQuery multi-regions (US or EU).
If set to true, this reservation is placed in the organization&#39;s secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization&#39;s default region. When `null`, the `multi_region_auxiliary` field will be omitted from the resulting object.
  - `name` (`string`): The name of the reservation. This field must only contain alphanumeric characters or dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `slot_capacity` (`number`): Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the
unit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false.
  - `autoscale` (`list[obj]`): The configuration parameters for the auto scaling feature. When `null`, the `autoscale` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_bigquery_reservation.autoscale.new](#fn-autoscalenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_bigquery_reservation.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_bigquery_reservation.newAttrs` constructs a new object with attributes and blocks configured for the `google_bigquery_reservation`
Terraform resource.

Unlike [google-beta.google_bigquery_reservation.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `concurrency` (`number`): Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size. When `null`, the `concurrency` field will be omitted from the resulting object.
  - `edition` (`string`): The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS When `null`, the `edition` field will be omitted from the resulting object.
  - `ignore_idle_slots` (`bool`): If false, any query using this reservation will use idle slots from other reservations within
the same admin project. If true, a query using this reservation will execute with the slot
capacity specified above at most. When `null`, the `ignore_idle_slots` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.
  - `multi_region_auxiliary` (`bool`): Applicable only for reservations located within one of the BigQuery multi-regions (US or EU).
If set to true, this reservation is placed in the organization&#39;s secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization&#39;s default region. When `null`, the `multi_region_auxiliary` field will be omitted from the resulting object.
  - `name` (`string`): The name of the reservation. This field must only contain alphanumeric characters or dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `slot_capacity` (`number`): Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the
unit of parallelism. Queries using this reservation might use more slots during runtime if ignoreIdleSlots is set to false.
  - `autoscale` (`list[obj]`): The configuration parameters for the auto scaling feature. When `null`, the `autoscale` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_bigquery_reservation.autoscale.new](#fn-autoscalenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_bigquery_reservation.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_bigquery_reservation` resource into the root Terraform configuration.


### fn withAutoscale

```ts
withAutoscale()
```

`google-beta.list[obj].withAutoscale` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscale field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withAutoscaleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscale` field.


### fn withAutoscaleMixin

```ts
withAutoscaleMixin()
```

`google-beta.list[obj].withAutoscaleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscale field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAutoscale](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscale` field.


### fn withConcurrency

```ts
withConcurrency()
```

`google-beta.number.withConcurrency` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the concurrency field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `concurrency` field.


### fn withEdition

```ts
withEdition()
```

`google-beta.string.withEdition` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the edition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `edition` field.


### fn withIgnoreIdleSlots

```ts
withIgnoreIdleSlots()
```

`google-beta.bool.withIgnoreIdleSlots` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the ignore_idle_slots field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `ignore_idle_slots` field.


### fn withLocation

```ts
withLocation()
```

`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMultiRegionAuxiliary

```ts
withMultiRegionAuxiliary()
```

`google-beta.bool.withMultiRegionAuxiliary` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the multi_region_auxiliary field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `multi_region_auxiliary` field.


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


### fn withSlotCapacity

```ts
withSlotCapacity()
```

`google-beta.number.withSlotCapacity` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the slot_capacity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `slot_capacity` field.


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


## obj autoscale



### fn autoscale.new

```ts
new()
```


`google-beta.google_bigquery_reservation.autoscale.new` constructs a new object with attributes and blocks configured for the `autoscale`
Terraform sub block.



**Args**:
  - `max_slots` (`number`): Number of slots to be scaled when needed. When `null`, the `max_slots` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscale` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_bigquery_reservation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
