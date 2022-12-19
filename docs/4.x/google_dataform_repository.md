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
* [`obj git_remote_settings`](#obj-git_remote_settings)
  * [`fn new()`](#fn-git_remote_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

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
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `git_remote_settings` (`list[obj]`): Optional. If set, configures this repository to be linked to a Git remote. When `null`, the `git_remote_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.new](#fn-googledataformrepositorygitremotesettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.timeouts.new](#fn-googledataformrepositorytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_dataform_repository.newAttrs` constructs a new object with attributes and blocks configured for the `google_dataform_repository`
Terraform resource.

Unlike [google-beta.google_dataform_repository.new](#fn-googledataformrepositorynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): The repository&#39;s name.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): A reference to the region When `null`, the `region` field will be omitted from the resulting object.
  - `git_remote_settings` (`list[obj]`): Optional. If set, configures this repository to be linked to a Git remote. When `null`, the `git_remote_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.git_remote_settings.new](#fn-googledataformrepositorygitremotesettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_dataform_repository.timeouts.new](#fn-googledataformrepositorytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_dataform_repository` resource into the root Terraform configuration.


### fn withGitRemoteSettings

```ts
withGitRemoteSettings()
```

`google-beta.google_dataform_repository.withGitRemoteSettings` constructs a mixin object that can be merged into the `google_dataform_repository`
Terraform resource block to set or update the git_remote_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `git_remote_settings` field.


### fn withGitRemoteSettingsMixin

```ts
withGitRemoteSettingsMixin()
```

`google-beta.google_dataform_repository.withGitRemoteSettingsMixin` constructs a mixin object that can be merged into the `google_dataform_repository`
Terraform resource block to set or update the git_remote_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.google_dataform_repository.withGitRemoteSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `git_remote_settings` field.


### fn withName

```ts
withName()
```

`google-beta.google_dataform_repository.withName` constructs a mixin object that can be merged into the `google_dataform_repository`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google-beta.google_dataform_repository.withProject` constructs a mixin object that can be merged into the `google_dataform_repository`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google-beta.google_dataform_repository.withRegion` constructs a mixin object that can be merged into the `google_dataform_repository`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google-beta.google_dataform_repository.withTimeouts` constructs a mixin object that can be merged into the `google_dataform_repository`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google-beta.google_dataform_repository.withTimeoutsMixin` constructs a mixin object that can be merged into the `google_dataform_repository`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google-beta.google_dataform_repository.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


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
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
