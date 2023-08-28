---
permalink: /google_dataform_repository_workflow_config/
---

# google_dataform_repository_workflow_config

`google_dataform_repository_workflow_config` represents the `google-beta_google_dataform_repository_workflow_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCronSchedule()`](#fn-withcronschedule)
* [`fn withInvocationConfig()`](#fn-withinvocationconfig)
* [`fn withInvocationConfigMixin()`](#fn-withinvocationconfigmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withReleaseConfig()`](#fn-withreleaseconfig)
* [`fn withRepository()`](#fn-withrepository)
* [`fn withTimeZone()`](#fn-withtimezone)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj invocation_config`](#obj-invocation_config)
  * [`fn new()`](#fn-invocation_confignew)
  * [`obj invocation_config.included_targets`](#obj-invocation_configincluded_targets)
    * [`fn new()`](#fn-invocation_configincluded_targetsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_dataform_repository_workflow_config.new` injects a new `google-beta_google_dataform_repository_workflow_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_dataform_repository_workflow_config.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_dataform_repository_workflow_config` using the reference:

    $._ref.google-beta_google_dataform_repository_workflow_config.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_dataform_repository_workflow_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cron_schedule` (`string`): Optional. Optional schedule (in cron format) for automatic creation of compilation results. When `null`, the `cron_schedule` field will be omitted from the resulting object.
  - `name` (`string`): The workflow&#39;s name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `release_config` (`string`): The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  - `repository` (`string`): A reference to the Dataform repository When `null`, the `repository` field will be omitted from the resulting object.
  - `time_zone` (`string`): Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC. When `null`, the `time_zone` field will be omitted from the resulting object.
  - `invocation_config` (`list[obj]`): Optional. If left unset, a default InvocationConfig will be used. When `null`, the `invocation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.invocation_config.new](#fn-invocation_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_dataform_repository_workflow_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataform_repository_workflow_config`
Terraform resource.

Unlike [google-beta.google_dataform_repository_workflow_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cron_schedule` (`string`): Optional. Optional schedule (in cron format) for automatic creation of compilation results. When `null`, the `cron_schedule` field will be omitted from the resulting object.
  - `name` (`string`): The workflow&#39;s name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `release_config` (`string`): The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  - `repository` (`string`): A reference to the Dataform repository When `null`, the `repository` field will be omitted from the resulting object.
  - `time_zone` (`string`): Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC. When `null`, the `time_zone` field will be omitted from the resulting object.
  - `invocation_config` (`list[obj]`): Optional. If left unset, a default InvocationConfig will be used. When `null`, the `invocation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.invocation_config.new](#fn-invocation_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataform_repository_workflow_config` resource into the root Terraform configuration.


### fn withCronSchedule

```ts
withCronSchedule()
```

`google-beta.string.withCronSchedule` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cron_schedule field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cron_schedule` field.


### fn withInvocationConfig

```ts
withInvocationConfig()
```

`google-beta.list[obj].withInvocationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the invocation_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withInvocationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `invocation_config` field.


### fn withInvocationConfigMixin

```ts
withInvocationConfigMixin()
```

`google-beta.list[obj].withInvocationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the invocation_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withInvocationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `invocation_config` field.


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


### fn withReleaseConfig

```ts
withReleaseConfig()
```

`google-beta.string.withReleaseConfig` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the release_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `release_config` field.


### fn withRepository

```ts
withRepository()
```

`google-beta.string.withRepository` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the repository field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `repository` field.


### fn withTimeZone

```ts
withTimeZone()
```

`google-beta.string.withTimeZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the time_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `time_zone` field.


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


## obj invocation_config



### fn invocation_config.new

```ts
new()
```


`google-beta.google_dataform_repository_workflow_config.invocation_config.new` constructs a new object with attributes and blocks configured for the `invocation_config`
Terraform sub block.



**Args**:
  - `fully_refresh_incremental_tables_enabled` (`bool`): Optional. When set to true, any incremental tables will be fully refreshed. When `null`, the `fully_refresh_incremental_tables_enabled` field will be omitted from the resulting object.
  - `included_tags` (`list`): Optional. The set of tags to include. When `null`, the `included_tags` field will be omitted from the resulting object.
  - `service_account` (`string`): Optional. The service account to run workflow invocations under. When `null`, the `service_account` field will be omitted from the resulting object.
  - `transitive_dependencies_included` (`bool`): Optional. When set to true, transitive dependencies of included actions will be executed. When `null`, the `transitive_dependencies_included` field will be omitted from the resulting object.
  - `transitive_dependents_included` (`bool`): Optional. When set to true, transitive dependents of included actions will be executed. When `null`, the `transitive_dependents_included` field will be omitted from the resulting object.
  - `included_targets` (`list[obj]`): Optional. The set of action identifiers to include. When `null`, the `included_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_workflow_config.invocation_config.included_targets.new](#fn-invocation_configincluded_targetsnew) constructor.

**Returns**:
  - An attribute object that represents the `invocation_config` sub block.


## obj invocation_config.included_targets



### fn invocation_config.included_targets.new

```ts
new()
```


`google-beta.google_dataform_repository_workflow_config.invocation_config.included_targets.new` constructs a new object with attributes and blocks configured for the `included_targets`
Terraform sub block.



**Args**:
  - `database` (`string`): The action&#39;s database (Google Cloud project ID). When `null`, the `database` field will be omitted from the resulting object.
  - `name` (`string`): The action&#39;s name, within database and schema. When `null`, the `name` field will be omitted from the resulting object.
  - `schema` (`string`): The action&#39;s schema (BigQuery dataset ID), within database. When `null`, the `schema` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `included_targets` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_dataform_repository_workflow_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
