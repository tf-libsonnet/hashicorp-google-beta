---
permalink: /google_dataform_repository_release_config/
---

# google_dataform_repository_release_config

`google_dataform_repository_release_config` represents the `google-beta_google_dataform_repository_release_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCodeCompilationConfig()`](#fn-withcodecompilationconfig)
* [`fn withCodeCompilationConfigMixin()`](#fn-withcodecompilationconfigmixin)
* [`fn withCronSchedule()`](#fn-withcronschedule)
* [`fn withGitCommitish()`](#fn-withgitcommitish)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withRepository()`](#fn-withrepository)
* [`fn withTimeZone()`](#fn-withtimezone)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj code_compilation_config`](#obj-code_compilation_config)
  * [`fn new()`](#fn-code_compilation_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_dataform_repository_release_config.new` injects a new `google-beta_google_dataform_repository_release_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_dataform_repository_release_config.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_dataform_repository_release_config` using the reference:

    $._ref.google-beta_google_dataform_repository_release_config.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_dataform_repository_release_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cron_schedule` (`string`): Optional. Optional schedule (in cron format) for automatic creation of compilation results. When `null`, the `cron_schedule` field will be omitted from the resulting object.
  - `git_commitish` (`string`): Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  - `name` (`string`): The release&#39;s name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `repository` (`string`): A reference to the Dataform repository When `null`, the `repository` field will be omitted from the resulting object.
  - `time_zone` (`string`): Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC. When `null`, the `time_zone` field will be omitted from the resulting object.
  - `code_compilation_config` (`list[obj]`): Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json. When `null`, the `code_compilation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_release_config.code_compilation_config.new](#fn-code_compilation_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_release_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_dataform_repository_release_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataform_repository_release_config`
Terraform resource.

Unlike [google-beta.google_dataform_repository_release_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cron_schedule` (`string`): Optional. Optional schedule (in cron format) for automatic creation of compilation results. When `null`, the `cron_schedule` field will be omitted from the resulting object.
  - `git_commitish` (`string`): Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  - `name` (`string`): The release&#39;s name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `repository` (`string`): A reference to the Dataform repository When `null`, the `repository` field will be omitted from the resulting object.
  - `time_zone` (`string`): Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC. When `null`, the `time_zone` field will be omitted from the resulting object.
  - `code_compilation_config` (`list[obj]`): Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json. When `null`, the `code_compilation_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_release_config.code_compilation_config.new](#fn-code_compilation_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository_release_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataform_repository_release_config` resource into the root Terraform configuration.


### fn withCodeCompilationConfig

```ts
withCodeCompilationConfig()
```

`google-beta.list[obj].withCodeCompilationConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the code_compilation_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withCodeCompilationConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `code_compilation_config` field.


### fn withCodeCompilationConfigMixin

```ts
withCodeCompilationConfigMixin()
```

`google-beta.list[obj].withCodeCompilationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the code_compilation_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCodeCompilationConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `code_compilation_config` field.


### fn withCronSchedule

```ts
withCronSchedule()
```

`google-beta.string.withCronSchedule` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cron_schedule field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cron_schedule` field.


### fn withGitCommitish

```ts
withGitCommitish()
```

`google-beta.string.withGitCommitish` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the git_commitish field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `git_commitish` field.


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


## obj code_compilation_config



### fn code_compilation_config.new

```ts
new()
```


`google-beta.google_dataform_repository_release_config.code_compilation_config.new` constructs a new object with attributes and blocks configured for the `code_compilation_config`
Terraform sub block.



**Args**:
  - `assertion_schema` (`string`): Optional. The default schema (BigQuery dataset ID) for assertions. When `null`, the `assertion_schema` field will be omitted from the resulting object.
  - `database_suffix` (`string`): Optional. The suffix that should be appended to all database (Google Cloud project ID) names. When `null`, the `database_suffix` field will be omitted from the resulting object.
  - `default_database` (`string`): Optional. The default database (Google Cloud project ID). When `null`, the `default_database` field will be omitted from the resulting object.
  - `default_location` (`string`): Optional. The default BigQuery location to use. Defaults to &#34;US&#34;.
See the BigQuery docs for a full list of locations: https://cloud.google.com/bigquery/docs/locations. When `null`, the `default_location` field will be omitted from the resulting object.
  - `default_schema` (`string`): Optional. The default schema (BigQuery dataset ID). When `null`, the `default_schema` field will be omitted from the resulting object.
  - `schema_suffix` (`string`): Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names. When `null`, the `schema_suffix` field will be omitted from the resulting object.
  - `table_prefix` (`string`): Optional. The prefix that should be prepended to all table names. When `null`, the `table_prefix` field will be omitted from the resulting object.
  - `vars` (`obj`): Optional. User-defined variables that are made available to project code during compilation.
An object containing a list of &#34;key&#34;: value pairs.
Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `vars` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `code_compilation_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_dataform_repository_release_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
