---
permalink: /google_dataform_repository/
---

# google_dataform_repository

`google_dataform_repository` represents the `google-beta_google_dataform_repository` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withGitRemoteSettings()`](#fn-withgitremotesettings)
* [`fn withGitRemoteSettingsMixin()`](#fn-withgitremotesettingsmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWorkspaceCompilationOverrides()`](#fn-withworkspacecompilationoverrides)
* [`fn withWorkspaceCompilationOverridesMixin()`](#fn-withworkspacecompilationoverridesmixin)
* [`obj git_remote_settings`](#obj-git_remote_settings)
  * [`fn new()`](#fn-git_remote_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj workspace_compilation_overrides`](#obj-workspace_compilation_overrides)
  * [`fn new()`](#fn-workspace_compilation_overridesnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_dataform_repository.new` injects a new `google-beta_google_dataform_repository` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_dataform_repository.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_dataform_repository` using the reference:

    $._ref.google-beta_google_dataform_repository.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_dataform_repository.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `name` (`string`): The repository&#39;s name.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `git_remote_settings` (`list[obj]`): Optional. If set, configures this repository to be linked to a Git remote. When `null`, the `git_remote_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.new](#fn-git_remote_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.timeouts.new](#fn-timeoutsnew) constructor.
  - `workspace_compilation_overrides` (`list[obj]`): Optional. If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. When `null`, the `workspace_compilation_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.workspace_compilation_overrides.new](#fn-workspace_compilation_overridesnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_dataform_repository.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataform_repository`
Terraform resource.

Unlike [google-beta.google_dataform_repository.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): The repository&#39;s name.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `git_remote_settings` (`list[obj]`): Optional. If set, configures this repository to be linked to a Git remote. When `null`, the `git_remote_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.new](#fn-git_remote_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.timeouts.new](#fn-timeoutsnew) constructor.
  - `workspace_compilation_overrides` (`list[obj]`): Optional. If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. When `null`, the `workspace_compilation_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.workspace_compilation_overrides.new](#fn-workspace_compilation_overridesnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataform_repository` resource into the root Terraform configuration.


### fn withGitRemoteSettings

```ts
withGitRemoteSettings()
```

`google-beta.list[obj].withGitRemoteSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the git_remote_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withGitRemoteSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `git_remote_settings` field.


### fn withGitRemoteSettingsMixin

```ts
withGitRemoteSettingsMixin()
```

`google-beta.list[obj].withGitRemoteSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the git_remote_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withGitRemoteSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `git_remote_settings` field.


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


### fn withWorkspaceCompilationOverrides

```ts
withWorkspaceCompilationOverrides()
```

`google-beta.list[obj].withWorkspaceCompilationOverrides` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the workspace_compilation_overrides field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withWorkspaceCompilationOverridesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `workspace_compilation_overrides` field.


### fn withWorkspaceCompilationOverridesMixin

```ts
withWorkspaceCompilationOverridesMixin()
```

`google-beta.list[obj].withWorkspaceCompilationOverridesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the workspace_compilation_overrides field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withWorkspaceCompilationOverrides](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `workspace_compilation_overrides` field.


## obj git_remote_settings



### fn git_remote_settings.new

```ts
new()
```


`google-beta.google_dataform_repository.git_remote_settings.new` constructs a new object with attributes and blocks configured for the `git_remote_settings`
Terraform sub block.



**Args**:
  - `authentication_token_secret_version` (`string`): The name of the Secret Manager secret version to use as an authentication token for Git operations. Must be in the format projects/*/secrets/*/versions/*.
  - `default_branch` (`string`): The Git remote&#39;s default branch name.
  - `url` (`string`): The Git remote&#39;s URL.

**Returns**:
  - An attribute object that represents the `git_remote_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_dataform_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj workspace_compilation_overrides



### fn workspace_compilation_overrides.new

```ts
new()
```


`google-beta.google_dataform_repository.workspace_compilation_overrides.new` constructs a new object with attributes and blocks configured for the `workspace_compilation_overrides`
Terraform sub block.



**Args**:
  - `default_database` (`string`): Optional. The default database (Google Cloud project ID). When `null`, the `default_database` field will be omitted from the resulting object.
  - `schema_suffix` (`string`): Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names. When `null`, the `schema_suffix` field will be omitted from the resulting object.
  - `table_prefix` (`string`): Optional. The prefix that should be prepended to all table names. When `null`, the `table_prefix` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `workspace_compilation_overrides` sub block.
