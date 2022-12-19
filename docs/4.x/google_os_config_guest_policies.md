---
permalink: /google_os_config_guest_policies/
---

# google_os_config_guest_policies

`google_os_config_guest_policies` represents the `google-beta_google_os_config_guest_policies` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAssignment()`](#fn-withassignment)
* [`fn withAssignmentMixin()`](#fn-withassignmentmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEtag()`](#fn-withetag)
* [`fn withGuestPolicyId()`](#fn-withguestpolicyid)
* [`fn withPackageRepositories()`](#fn-withpackagerepositories)
* [`fn withPackageRepositoriesMixin()`](#fn-withpackagerepositoriesmixin)
* [`fn withPackages()`](#fn-withpackages)
* [`fn withPackagesMixin()`](#fn-withpackagesmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRecipes()`](#fn-withrecipes)
* [`fn withRecipesMixin()`](#fn-withrecipesmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj assignment`](#obj-assignment)
  * [`fn new()`](#fn-assignmentnew)
  * [`obj assignment.group_labels`](#obj-assignmentgroup_labels)
    * [`fn new()`](#fn-assignmentgroup_labelsnew)
  * [`obj assignment.os_types`](#obj-assignmentos_types)
    * [`fn new()`](#fn-assignmentos_typesnew)
* [`obj package_repositories`](#obj-package_repositories)
  * [`fn new()`](#fn-package_repositoriesnew)
  * [`obj package_repositories.apt`](#obj-package_repositoriesapt)
    * [`fn new()`](#fn-package_repositoriesaptnew)
  * [`obj package_repositories.goo`](#obj-package_repositoriesgoo)
    * [`fn new()`](#fn-package_repositoriesgoonew)
  * [`obj package_repositories.yum`](#obj-package_repositoriesyum)
    * [`fn new()`](#fn-package_repositoriesyumnew)
  * [`obj package_repositories.zypper`](#obj-package_repositorieszypper)
    * [`fn new()`](#fn-package_repositorieszyppernew)
* [`obj packages`](#obj-packages)
  * [`fn new()`](#fn-packagesnew)
* [`obj recipes`](#obj-recipes)
  * [`fn new()`](#fn-recipesnew)
  * [`obj recipes.artifacts`](#obj-recipesartifacts)
    * [`fn new()`](#fn-recipesartifactsnew)
    * [`obj recipes.artifacts.gcs`](#obj-recipesartifactsgcs)
      * [`fn new()`](#fn-recipesartifactsgcsnew)
    * [`obj recipes.artifacts.remote`](#obj-recipesartifactsremote)
      * [`fn new()`](#fn-recipesartifactsremotenew)
  * [`obj recipes.install_steps`](#obj-recipesinstall_steps)
    * [`fn new()`](#fn-recipesinstall_stepsnew)
    * [`obj recipes.install_steps.archive_extraction`](#obj-recipesinstall_stepsarchive_extraction)
      * [`fn new()`](#fn-recipesinstall_stepsarchive_extractionnew)
    * [`obj recipes.install_steps.dpkg_installation`](#obj-recipesinstall_stepsdpkg_installation)
      * [`fn new()`](#fn-recipesinstall_stepsdpkg_installationnew)
    * [`obj recipes.install_steps.file_copy`](#obj-recipesinstall_stepsfile_copy)
      * [`fn new()`](#fn-recipesinstall_stepsfile_copynew)
    * [`obj recipes.install_steps.file_exec`](#obj-recipesinstall_stepsfile_exec)
      * [`fn new()`](#fn-recipesinstall_stepsfile_execnew)
    * [`obj recipes.install_steps.msi_installation`](#obj-recipesinstall_stepsmsi_installation)
      * [`fn new()`](#fn-recipesinstall_stepsmsi_installationnew)
    * [`obj recipes.install_steps.rpm_installation`](#obj-recipesinstall_stepsrpm_installation)
      * [`fn new()`](#fn-recipesinstall_stepsrpm_installationnew)
    * [`obj recipes.install_steps.script_run`](#obj-recipesinstall_stepsscript_run)
      * [`fn new()`](#fn-recipesinstall_stepsscript_runnew)
  * [`obj recipes.update_steps`](#obj-recipesupdate_steps)
    * [`fn new()`](#fn-recipesupdate_stepsnew)
    * [`obj recipes.update_steps.archive_extraction`](#obj-recipesupdate_stepsarchive_extraction)
      * [`fn new()`](#fn-recipesupdate_stepsarchive_extractionnew)
    * [`obj recipes.update_steps.dpkg_installation`](#obj-recipesupdate_stepsdpkg_installation)
      * [`fn new()`](#fn-recipesupdate_stepsdpkg_installationnew)
    * [`obj recipes.update_steps.file_copy`](#obj-recipesupdate_stepsfile_copy)
      * [`fn new()`](#fn-recipesupdate_stepsfile_copynew)
    * [`obj recipes.update_steps.file_exec`](#obj-recipesupdate_stepsfile_exec)
      * [`fn new()`](#fn-recipesupdate_stepsfile_execnew)
    * [`obj recipes.update_steps.msi_installation`](#obj-recipesupdate_stepsmsi_installation)
      * [`fn new()`](#fn-recipesupdate_stepsmsi_installationnew)
    * [`obj recipes.update_steps.rpm_installation`](#obj-recipesupdate_stepsrpm_installation)
      * [`fn new()`](#fn-recipesupdate_stepsrpm_installationnew)
    * [`obj recipes.update_steps.script_run`](#obj-recipesupdate_stepsscript_run)
      * [`fn new()`](#fn-recipesupdate_stepsscript_runnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_os_config_guest_policies.new` injects a new `google-beta_google_os_config_guest_policies` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_os_config_guest_policies.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_os_config_guest_policies` using the reference:

    $._ref.google-beta_google_os_config_guest_policies.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_os_config_guest_policies.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Description of the guest policy. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `etag` (`string`): The etag for this guest policy. If this is provided on update, it must match the server&#39;s etag. When `null`, the `etag` field will be omitted from the resulting object.
  - `guest_policy_id` (`string`): The logical name of the guest policy in the project with the following restrictions:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the project.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `assignment` (`list[obj]`): Specifies the VM instances that are assigned to this policy. This allows you to target sets
or groups of VM instances by different parameters such as labels, names, OS, or zones.
If left empty, all VM instances underneath this policy are targeted.
At the same level in the resource hierarchy (that is within a project), the service prevents
the creation of multiple policies that conflict with each other.
For more information, see how the service
[handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts). When `null`, the `assignment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.assignment.new](#fn-assignmentnew) constructor.
  - `package_repositories` (`list[obj]`): A list of package repositories to configure on the VM instance.
This is done before any other configs are applied so they can use these repos.
Package repositories are only configured if the corresponding package manager(s) are available. When `null`, the `package_repositories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.new](#fn-package_repositoriesnew) constructor.
  - `packages` (`list[obj]`): The software packages to be managed by this policy. When `null`, the `packages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.packages.new](#fn-packagesnew) constructor.
  - `recipes` (`list[obj]`): A list of Recipes to install on the VM instance. When `null`, the `recipes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.new](#fn-recipesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_os_config_guest_policies.newAttrs` constructs a new object with attributes and blocks configured for the `google_os_config_guest_policies`
Terraform resource.

Unlike [google-beta.google_os_config_guest_policies.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Description of the guest policy. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `etag` (`string`): The etag for this guest policy. If this is provided on update, it must match the server&#39;s etag. When `null`, the `etag` field will be omitted from the resulting object.
  - `guest_policy_id` (`string`): The logical name of the guest policy in the project with the following restrictions:
* Must contain only lowercase letters, numbers, and hyphens.
* Must start with a letter.
* Must be between 1-63 characters.
* Must end with a number or a letter.
* Must be unique within the project.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `assignment` (`list[obj]`): Specifies the VM instances that are assigned to this policy. This allows you to target sets
or groups of VM instances by different parameters such as labels, names, OS, or zones.
If left empty, all VM instances underneath this policy are targeted.
At the same level in the resource hierarchy (that is within a project), the service prevents
the creation of multiple policies that conflict with each other.
For more information, see how the service
[handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts). When `null`, the `assignment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.assignment.new](#fn-assignmentnew) constructor.
  - `package_repositories` (`list[obj]`): A list of package repositories to configure on the VM instance.
This is done before any other configs are applied so they can use these repos.
Package repositories are only configured if the corresponding package manager(s) are available. When `null`, the `package_repositories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.new](#fn-package_repositoriesnew) constructor.
  - `packages` (`list[obj]`): The software packages to be managed by this policy. When `null`, the `packages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.packages.new](#fn-packagesnew) constructor.
  - `recipes` (`list[obj]`): A list of Recipes to install on the VM instance. When `null`, the `recipes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.new](#fn-recipesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_os_config_guest_policies` resource into the root Terraform configuration.


### fn withAssignment

```ts
withAssignment()
```

`google-beta.list[obj].withAssignment` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the assignment field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withAssignmentMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `assignment` field.


### fn withAssignmentMixin

```ts
withAssignmentMixin()
```

`google-beta.list[obj].withAssignmentMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the assignment field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withAssignment](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `assignment` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEtag

```ts
withEtag()
```

`google-beta.string.withEtag` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the etag field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `etag` field.


### fn withGuestPolicyId

```ts
withGuestPolicyId()
```

`google-beta.string.withGuestPolicyId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the guest_policy_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `guest_policy_id` field.


### fn withPackageRepositories

```ts
withPackageRepositories()
```

`google-beta.list[obj].withPackageRepositories` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the package_repositories field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withPackageRepositoriesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `package_repositories` field.


### fn withPackageRepositoriesMixin

```ts
withPackageRepositoriesMixin()
```

`google-beta.list[obj].withPackageRepositoriesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the package_repositories field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPackageRepositories](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `package_repositories` field.


### fn withPackages

```ts
withPackages()
```

`google-beta.list[obj].withPackages` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the packages field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withPackagesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `packages` field.


### fn withPackagesMixin

```ts
withPackagesMixin()
```

`google-beta.list[obj].withPackagesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the packages field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPackages](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `packages` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRecipes

```ts
withRecipes()
```

`google-beta.list[obj].withRecipes` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the recipes field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withRecipesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `recipes` field.


### fn withRecipesMixin

```ts
withRecipesMixin()
```

`google-beta.list[obj].withRecipesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the recipes field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRecipes](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `recipes` field.


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


## obj assignment



### fn assignment.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.assignment.new` constructs a new object with attributes and blocks configured for the `assignment`
Terraform sub block.



**Args**:
  - `instance_name_prefixes` (`list`): Targets VM instances whose name starts with one of these prefixes.
Like labels, this is another way to group VM instances when targeting configs,
for example prefix=&#34;prod-&#34;.
Only supported for project-level policies. When `null`, the `instance_name_prefixes` field will be omitted from the resulting object.
  - `instances` (`list`): Targets any of the instances specified. Instances are specified by their URI in the form
zones/[ZONE]/instances/[INSTANCE_NAME].
Instance targeting is uncommon and is supported to facilitate the management of changes
by the instance or to target specific VM instances for development and testing.
Only supported for project-level policies and must reference instances within this project. When `null`, the `instances` field will be omitted from the resulting object.
  - `zones` (`list`): Targets instances in any of these zones. Leave empty to target instances in any zone.
Zonal targeting is uncommon and is supported to facilitate the management of changes by zone. When `null`, the `zones` field will be omitted from the resulting object.
  - `group_labels` (`list[obj]`): Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups,
for example &#34;env=prod or env=staging&#34;. When `null`, the `group_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.assignment.group_labels.new](#fn-group_labelsnew) constructor.
  - `os_types` (`list[obj]`): Targets VM instances matching at least one of the following OS types.
VM instances must match all supplied criteria for a given OsType to be included. When `null`, the `os_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.assignment.os_types.new](#fn-os_typesnew) constructor.

**Returns**:
  - An attribute object that represents the `assignment` sub block.


## obj assignment.group_labels



### fn assignment.group_labels.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.assignment.group_labels.new` constructs a new object with attributes and blocks configured for the `group_labels`
Terraform sub block.



**Args**:
  - `labels` (`obj`): Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.

**Returns**:
  - An attribute object that represents the `group_labels` sub block.


## obj assignment.os_types



### fn assignment.os_types.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.assignment.os_types.new` constructs a new object with attributes and blocks configured for the `os_types`
Terraform sub block.



**Args**:
  - `os_architecture` (`string`): Targets VM instances with OS Inventory enabled and having the following OS architecture. When `null`, the `os_architecture` field will be omitted from the resulting object.
  - `os_short_name` (`string`): Targets VM instances with OS Inventory enabled and having the following OS short name, for example &#34;debian&#34; or &#34;windows&#34;. When `null`, the `os_short_name` field will be omitted from the resulting object.
  - `os_version` (`string`): Targets VM instances with OS Inventory enabled and having the following following OS version. When `null`, the `os_version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `os_types` sub block.


## obj package_repositories



### fn package_repositories.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.package_repositories.new` constructs a new object with attributes and blocks configured for the `package_repositories`
Terraform sub block.



**Args**:
  - `apt` (`list[obj]`): An Apt Repository. When `null`, the `apt` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.apt.new](#fn-aptnew) constructor.
  - `goo` (`list[obj]`): A Goo Repository. When `null`, the `goo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.goo.new](#fn-goonew) constructor.
  - `yum` (`list[obj]`): A Yum Repository. When `null`, the `yum` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.yum.new](#fn-yumnew) constructor.
  - `zypper` (`list[obj]`): A Zypper Repository. When `null`, the `zypper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.package_repositories.zypper.new](#fn-zyppernew) constructor.

**Returns**:
  - An attribute object that represents the `package_repositories` sub block.


## obj package_repositories.apt



### fn package_repositories.apt.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.package_repositories.apt.new` constructs a new object with attributes and blocks configured for the `apt`
Terraform sub block.



**Args**:
  - `archive_type` (`string`): Type of archive files in this repository. The default behavior is DEB. Default value: &#34;DEB&#34; Possible values: [&#34;DEB&#34;, &#34;DEB_SRC&#34;] When `null`, the `archive_type` field will be omitted from the resulting object.
  - `components` (`list`): List of components for this repository. Must contain at least one item.
  - `distribution` (`string`): Distribution of this repository.
  - `gpg_key` (`string`): URI of the key file for this repository. The agent maintains a keyring at
/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg containing all the keys in any applied guest policy. When `null`, the `gpg_key` field will be omitted from the resulting object.
  - `uri` (`string`): URI for this repository.

**Returns**:
  - An attribute object that represents the `apt` sub block.


## obj package_repositories.goo



### fn package_repositories.goo.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.package_repositories.goo.new` constructs a new object with attributes and blocks configured for the `goo`
Terraform sub block.



**Args**:
  - `name` (`string`): The name of the repository.
  - `url` (`string`): The url of the repository.

**Returns**:
  - An attribute object that represents the `goo` sub block.


## obj package_repositories.yum



### fn package_repositories.yum.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.package_repositories.yum.new` constructs a new object with attributes and blocks configured for the `yum`
Terraform sub block.



**Args**:
  - `base_url` (`string`): The location of the repository directory.
  - `display_name` (`string`): The display name of the repository. When `null`, the `display_name` field will be omitted from the resulting object.
  - `gpg_keys` (`list`): URIs of GPG keys. When `null`, the `gpg_keys` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `yum` sub block.


## obj package_repositories.zypper



### fn package_repositories.zypper.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.package_repositories.zypper.new` constructs a new object with attributes and blocks configured for the `zypper`
Terraform sub block.



**Args**:
  - `base_url` (`string`): The location of the repository directory.
  - `display_name` (`string`): The display name of the repository. When `null`, the `display_name` field will be omitted from the resulting object.
  - `gpg_keys` (`list`): URIs of GPG keys. When `null`, the `gpg_keys` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `zypper` sub block.


## obj packages



### fn packages.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.packages.new` constructs a new object with attributes and blocks configured for the `packages`
Terraform sub block.



**Args**:
  - `desired_state` (`string`): The desiredState the agent should maintain for this package. The default is to ensure the package is installed. Possible values: [&#34;INSTALLED&#34;, &#34;UPDATED&#34;, &#34;REMOVED&#34;] When `null`, the `desired_state` field will be omitted from the resulting object.
  - `manager` (`string`): Type of package manager that can be used to install this package. If a system does not have the package manager,
the package is not installed or removed no error message is returned. By default, or if you specify ANY,
the agent attempts to install and remove this package using the default package manager.
This is useful when creating a policy that applies to different types of systems.
The default behavior is ANY. Default value: &#34;ANY&#34; Possible values: [&#34;ANY&#34;, &#34;APT&#34;, &#34;YUM&#34;, &#34;ZYPPER&#34;, &#34;GOO&#34;] When `null`, the `manager` field will be omitted from the resulting object.
  - `name` (`string`): The name of the package. A package is uniquely identified for conflict validation
by checking the package name and the manager(s) that the package targets.

**Returns**:
  - An attribute object that represents the `packages` sub block.


## obj recipes



### fn recipes.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.new` constructs a new object with attributes and blocks configured for the `recipes`
Terraform sub block.



**Args**:
  - `desired_state` (`string`): Default is INSTALLED. The desired state the agent should maintain for this recipe.

INSTALLED: The software recipe is installed on the instance but won&#39;t be updated to new versions.
INSTALLED_KEEP_UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version,
if a higher version of the recipe is assigned to this instance.
REMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected. Default value: &#34;INSTALLED&#34; Possible values: [&#34;INSTALLED&#34;, &#34;UPDATED&#34;, &#34;REMOVED&#34;] When `null`, the `desired_state` field will be omitted from the resulting object.
  - `name` (`string`): Unique identifier for the recipe. Only one recipe with a given name is installed on an instance.
Names are also used to identify resources which helps to determine whether guest policies have conflicts.
This means that requests to create multiple recipes with the same name and version are rejected since they
could potentially have conflicting assignments.
  - `version` (`string`): The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78). When `null`, the `version` field will be omitted from the resulting object.
  - `artifacts` (`list[obj]`): Resources available to be used in the steps in the recipe. When `null`, the `artifacts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.artifacts.new](#fn-artifactsnew) constructor.
  - `install_steps` (`list[obj]`): Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation.
Any steps taken (including partially completed steps) are not rolled back. When `null`, the `install_steps` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.new](#fn-install_stepsnew) constructor.
  - `update_steps` (`list[obj]`): Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe.
Any steps taken (including partially completed steps) are not rolled back. When `null`, the `update_steps` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.new](#fn-update_stepsnew) constructor.

**Returns**:
  - An attribute object that represents the `recipes` sub block.


## obj recipes.artifacts



### fn recipes.artifacts.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.artifacts.new` constructs a new object with attributes and blocks configured for the `artifacts`
Terraform sub block.



**Args**:
  - `allow_insecure` (`bool`): Defaults to false. When false, recipes are subject to validations based on the artifact type:
Remote: A checksum must be specified, and only protocols with transport-layer security are permitted.
GCS: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.
  - `gcs` (`list[obj]`): A Google Cloud Storage artifact. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.artifacts.gcs.new](#fn-recipesgcsnew) constructor.
  - `remote` (`list[obj]`): A generic remote artifact. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.artifacts.remote.new](#fn-recipesremotenew) constructor.

**Returns**:
  - An attribute object that represents the `artifacts` sub block.


## obj recipes.artifacts.gcs



### fn recipes.artifacts.gcs.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.artifacts.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Bucket of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
this value would be my-bucket. When `null`, the `bucket` field will be omitted from the resulting object.
  - `generation` (`number`): Must be provided if allowInsecure is false. Generation number of the Google Cloud Storage object.
https://storage.googleapis.com/my-bucket/foo/bar#1234567 this value would be 1234567. When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Name of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
this value would be foo/bar. When `null`, the `object` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `gcs` sub block.


## obj recipes.artifacts.remote



### fn recipes.artifacts.remote.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.artifacts.remote.new` constructs a new object with attributes and blocks configured for the `remote`
Terraform sub block.



**Args**:
  - `check_sum` (`string`): Must be provided if allowInsecure is false. SHA256 checksum in hex format, to compare to the checksum of the artifact.
If the checksum is not empty and it doesn&#39;t match the artifact then the recipe installation fails before running any
of the steps. When `null`, the `check_sum` field will be omitted from the resulting object.
  - `uri` (`string`): URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}. When `null`, the `uri` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `remote` sub block.


## obj recipes.install_steps



### fn recipes.install_steps.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.install_steps.new` constructs a new object with attributes and blocks configured for the `install_steps`
Terraform sub block.



**Args**:
  - `archive_extraction` (`list[obj]`): Extracts an archive into the specified directory. When `null`, the `archive_extraction` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.archive_extraction.new](#fn-recipesarchive_extractionnew) constructor.
  - `dpkg_installation` (`list[obj]`): Installs a deb file via dpkg. When `null`, the `dpkg_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.dpkg_installation.new](#fn-recipesdpkg_installationnew) constructor.
  - `file_copy` (`list[obj]`): Copies a file onto the instance. When `null`, the `file_copy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.file_copy.new](#fn-recipesfile_copynew) constructor.
  - `file_exec` (`list[obj]`): Executes an artifact or local file. When `null`, the `file_exec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.file_exec.new](#fn-recipesfile_execnew) constructor.
  - `msi_installation` (`list[obj]`): Installs an MSI file. When `null`, the `msi_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.msi_installation.new](#fn-recipesmsi_installationnew) constructor.
  - `rpm_installation` (`list[obj]`): Installs an rpm file via the rpm utility. When `null`, the `rpm_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.rpm_installation.new](#fn-recipesrpm_installationnew) constructor.
  - `script_run` (`list[obj]`): Runs commands in a shell. When `null`, the `script_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.install_steps.script_run.new](#fn-recipesscript_runnew) constructor.

**Returns**:
  - An attribute object that represents the `install_steps` sub block.


## obj recipes.install_steps.archive_extraction



### fn recipes.install_steps.archive_extraction.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.install_steps.archive_extraction.new` constructs a new object with attributes and blocks configured for the `archive_extraction`
Terraform sub block.



**Args**:
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.
  - `destination` (`string`): Directory to extract archive to. Defaults to / on Linux or C:\ on Windows. When `null`, the `destination` field will be omitted from the resulting object.
  - `type` (`string`): The type of the archive to extract. Possible values: [&#34;TAR&#34;, &#34;TAR_GZIP&#34;, &#34;TAR_BZIP&#34;, &#34;TAR_LZMA&#34;, &#34;TAR_XZ&#34;, &#34;ZIP&#34;]

**Returns**:
  - An attribute object that represents the `archive_extraction` sub block.


## obj recipes.install_steps.dpkg_installation



### fn recipes.install_steps.dpkg_installation.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.install_steps.dpkg_installation.new` constructs a new object with attributes and blocks configured for the `dpkg_installation`
Terraform sub block.



**Args**:
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.

**Returns**:
  - An attribute object that represents the `dpkg_installation` sub block.


## obj recipes.install_steps.file_copy



### fn recipes.install_steps.file_copy.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.install_steps.file_copy.new` constructs a new object with attributes and blocks configured for the `file_copy`
Terraform sub block.



**Args**:
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.
  - `destination` (`string`): The absolute path on the instance to put the file.
  - `overwrite` (`bool`): Whether to allow this step to overwrite existing files.If this is false and the file already exists the file
is not overwritten and the step is considered a success. Defaults to false. When `null`, the `overwrite` field will be omitted from the resulting object.
  - `permissions` (`string`): Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users
for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit
number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one
bit corresponds to the execute permission. Default behavior is 755.

Below are some examples of permissions and their associated values:
read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4 When `null`, the `permissions` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `file_copy` sub block.


## obj recipes.install_steps.file_exec



### fn recipes.install_steps.file_exec.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.install_steps.file_exec.new` constructs a new object with attributes and blocks configured for the `file_exec`
Terraform sub block.



**Args**:
  - `allowed_exit_codes` (`string`): A list of possible return values that the program can return to indicate a success. Defaults to [0]. When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.
  - `args` (`list`): Arguments to be passed to the provided executable. When `null`, the `args` field will be omitted from the resulting object.
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe. When `null`, the `artifact_id` field will be omitted from the resulting object.
  - `local_path` (`string`): The absolute path of the file on the local filesystem. When `null`, the `local_path` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `file_exec` sub block.


## obj recipes.install_steps.msi_installation



### fn recipes.install_steps.msi_installation.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.install_steps.msi_installation.new` constructs a new object with attributes and blocks configured for the `msi_installation`
Terraform sub block.



**Args**:
  - `allowed_exit_codes` (`list`): Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0] When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.
  - `flags` (`list`): The flags to use when installing the MSI. Defaults to the install flag. When `null`, the `flags` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `msi_installation` sub block.


## obj recipes.install_steps.rpm_installation



### fn recipes.install_steps.rpm_installation.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.install_steps.rpm_installation.new` constructs a new object with attributes and blocks configured for the `rpm_installation`
Terraform sub block.



**Args**:
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.

**Returns**:
  - An attribute object that represents the `rpm_installation` sub block.


## obj recipes.install_steps.script_run



### fn recipes.install_steps.script_run.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.install_steps.script_run.new` constructs a new object with attributes and blocks configured for the `script_run`
Terraform sub block.



**Args**:
  - `allowed_exit_codes` (`list`): Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0] When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.
  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script is executed directly,
which likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.
  - `script` (`string`): The shell script to be executed.

**Returns**:
  - An attribute object that represents the `script_run` sub block.


## obj recipes.update_steps



### fn recipes.update_steps.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.update_steps.new` constructs a new object with attributes and blocks configured for the `update_steps`
Terraform sub block.



**Args**:
  - `archive_extraction` (`list[obj]`): Extracts an archive into the specified directory. When `null`, the `archive_extraction` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.archive_extraction.new](#fn-recipesarchive_extractionnew) constructor.
  - `dpkg_installation` (`list[obj]`): Installs a deb file via dpkg. When `null`, the `dpkg_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.dpkg_installation.new](#fn-recipesdpkg_installationnew) constructor.
  - `file_copy` (`list[obj]`): Copies a file onto the instance. When `null`, the `file_copy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.file_copy.new](#fn-recipesfile_copynew) constructor.
  - `file_exec` (`list[obj]`): Executes an artifact or local file. When `null`, the `file_exec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.file_exec.new](#fn-recipesfile_execnew) constructor.
  - `msi_installation` (`list[obj]`): Installs an MSI file. When `null`, the `msi_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.msi_installation.new](#fn-recipesmsi_installationnew) constructor.
  - `rpm_installation` (`list[obj]`): Installs an rpm file via the rpm utility. When `null`, the `rpm_installation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.rpm_installation.new](#fn-recipesrpm_installationnew) constructor.
  - `script_run` (`list[obj]`): Runs commands in a shell. When `null`, the `script_run` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_os_config_guest_policies.recipes.update_steps.script_run.new](#fn-recipesscript_runnew) constructor.

**Returns**:
  - An attribute object that represents the `update_steps` sub block.


## obj recipes.update_steps.archive_extraction



### fn recipes.update_steps.archive_extraction.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.update_steps.archive_extraction.new` constructs a new object with attributes and blocks configured for the `archive_extraction`
Terraform sub block.



**Args**:
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.
  - `destination` (`string`): Directory to extract archive to. Defaults to / on Linux or C:\ on Windows. When `null`, the `destination` field will be omitted from the resulting object.
  - `type` (`string`): The type of the archive to extract. Possible values: [&#34;TAR&#34;, &#34;TAR_GZIP&#34;, &#34;TAR_BZIP&#34;, &#34;TAR_LZMA&#34;, &#34;TAR_XZ&#34;, &#34;ZIP&#34;]

**Returns**:
  - An attribute object that represents the `archive_extraction` sub block.


## obj recipes.update_steps.dpkg_installation



### fn recipes.update_steps.dpkg_installation.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.update_steps.dpkg_installation.new` constructs a new object with attributes and blocks configured for the `dpkg_installation`
Terraform sub block.



**Args**:
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.

**Returns**:
  - An attribute object that represents the `dpkg_installation` sub block.


## obj recipes.update_steps.file_copy



### fn recipes.update_steps.file_copy.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.update_steps.file_copy.new` constructs a new object with attributes and blocks configured for the `file_copy`
Terraform sub block.



**Args**:
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.
  - `destination` (`string`): The absolute path on the instance to put the file.
  - `overwrite` (`bool`): Whether to allow this step to overwrite existing files.If this is false and the file already exists the file
is not overwritten and the step is considered a success. Defaults to false. When `null`, the `overwrite` field will be omitted from the resulting object.
  - `permissions` (`string`): Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users
for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit
number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one
bit corresponds to the execute permission. Default behavior is 755.

Below are some examples of permissions and their associated values:
read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4 When `null`, the `permissions` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `file_copy` sub block.


## obj recipes.update_steps.file_exec



### fn recipes.update_steps.file_exec.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.update_steps.file_exec.new` constructs a new object with attributes and blocks configured for the `file_exec`
Terraform sub block.



**Args**:
  - `allowed_exit_codes` (`list`): A list of possible return values that the program can return to indicate a success. Defaults to [0]. When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.
  - `args` (`list`): Arguments to be passed to the provided executable. When `null`, the `args` field will be omitted from the resulting object.
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe. When `null`, the `artifact_id` field will be omitted from the resulting object.
  - `local_path` (`string`): The absolute path of the file on the local filesystem. When `null`, the `local_path` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `file_exec` sub block.


## obj recipes.update_steps.msi_installation



### fn recipes.update_steps.msi_installation.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.update_steps.msi_installation.new` constructs a new object with attributes and blocks configured for the `msi_installation`
Terraform sub block.



**Args**:
  - `allowed_exit_codes` (`list`): Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0] When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.
  - `flags` (`list`): The flags to use when installing the MSI. Defaults to the install flag. When `null`, the `flags` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `msi_installation` sub block.


## obj recipes.update_steps.rpm_installation



### fn recipes.update_steps.rpm_installation.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.update_steps.rpm_installation.new` constructs a new object with attributes and blocks configured for the `rpm_installation`
Terraform sub block.



**Args**:
  - `artifact_id` (`string`): The id of the relevant artifact in the recipe.

**Returns**:
  - An attribute object that represents the `rpm_installation` sub block.


## obj recipes.update_steps.script_run



### fn recipes.update_steps.script_run.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.recipes.update_steps.script_run.new` constructs a new object with attributes and blocks configured for the `script_run`
Terraform sub block.



**Args**:
  - `allowed_exit_codes` (`list`): Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0] When `null`, the `allowed_exit_codes` field will be omitted from the resulting object.
  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script is executed directly,
which likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.
  - `script` (`string`): The shell script to be executed.

**Returns**:
  - An attribute object that represents the `script_run` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_os_config_guest_policies.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
