---
permalink: /google_artifact_registry_repository/
---

# google_artifact_registry_repository

`google_artifact_registry_repository` represents the `google-beta_google_artifact_registry_repository` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCleanupPolicies()`](#fn-withcleanuppolicies)
* [`fn withCleanupPoliciesMixin()`](#fn-withcleanuppoliciesmixin)
* [`fn withCleanupPolicyDryRun()`](#fn-withcleanuppolicydryrun)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDockerConfig()`](#fn-withdockerconfig)
* [`fn withDockerConfigMixin()`](#fn-withdockerconfigmixin)
* [`fn withFormat()`](#fn-withformat)
* [`fn withKmsKeyName()`](#fn-withkmskeyname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMavenConfig()`](#fn-withmavenconfig)
* [`fn withMavenConfigMixin()`](#fn-withmavenconfigmixin)
* [`fn withMode()`](#fn-withmode)
* [`fn withProject()`](#fn-withproject)
* [`fn withRemoteRepositoryConfig()`](#fn-withremoterepositoryconfig)
* [`fn withRemoteRepositoryConfigMixin()`](#fn-withremoterepositoryconfigmixin)
* [`fn withRepositoryId()`](#fn-withrepositoryid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVirtualRepositoryConfig()`](#fn-withvirtualrepositoryconfig)
* [`fn withVirtualRepositoryConfigMixin()`](#fn-withvirtualrepositoryconfigmixin)
* [`obj cleanup_policies`](#obj-cleanup_policies)
  * [`fn new()`](#fn-cleanup_policiesnew)
  * [`obj cleanup_policies.condition`](#obj-cleanup_policiescondition)
    * [`fn new()`](#fn-cleanup_policiesconditionnew)
  * [`obj cleanup_policies.most_recent_versions`](#obj-cleanup_policiesmost_recent_versions)
    * [`fn new()`](#fn-cleanup_policiesmost_recent_versionsnew)
* [`obj docker_config`](#obj-docker_config)
  * [`fn new()`](#fn-docker_confignew)
* [`obj maven_config`](#obj-maven_config)
  * [`fn new()`](#fn-maven_confignew)
* [`obj remote_repository_config`](#obj-remote_repository_config)
  * [`fn new()`](#fn-remote_repository_confignew)
  * [`obj remote_repository_config.docker_repository`](#obj-remote_repository_configdocker_repository)
    * [`fn new()`](#fn-remote_repository_configdocker_repositorynew)
  * [`obj remote_repository_config.maven_repository`](#obj-remote_repository_configmaven_repository)
    * [`fn new()`](#fn-remote_repository_configmaven_repositorynew)
  * [`obj remote_repository_config.npm_repository`](#obj-remote_repository_confignpm_repository)
    * [`fn new()`](#fn-remote_repository_confignpm_repositorynew)
  * [`obj remote_repository_config.python_repository`](#obj-remote_repository_configpython_repository)
    * [`fn new()`](#fn-remote_repository_configpython_repositorynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj virtual_repository_config`](#obj-virtual_repository_config)
  * [`fn new()`](#fn-virtual_repository_confignew)
  * [`obj virtual_repository_config.upstream_policies`](#obj-virtual_repository_configupstream_policies)
    * [`fn new()`](#fn-virtual_repository_configupstream_policiesnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_artifact_registry_repository.new` injects a new `google-beta_google_artifact_registry_repository` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_artifact_registry_repository.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_artifact_registry_repository` using the reference:

    $._ref.google-beta_google_artifact_registry_repository.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_artifact_registry_repository.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cleanup_policy_dry_run` (`bool`): If true, the cleanup pipeline is prevented from deleting versions in this
repository. When `null`, the `cleanup_policy_dry_run` field will be omitted from the resulting object.
  - `description` (`string`): The user-provided description of the repository. When `null`, the `description` field will be omitted from the resulting object.
  - `format` (`string`): The format of packages that are stored in the repository. Supported formats
can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
You can only create alpha formats if you are a member of the
[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  - `kms_key_name` (`string`): The Cloud KMS resource name of the customer managed encryption key that’s
used to encrypt the contents of the Repository. Has the form:
&#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key&#39;.
This value may not be changed after the Repository has been created. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels with user-defined metadata.
This field may contain up to 64 entries. Label keys and values may be no
longer than 63 characters. Label keys must begin with a lowercase letter
and may only contain lowercase letters, numeric characters, underscores,
and dashes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this repository is located in. When `null`, the `location` field will be omitted from the resulting object.
  - `mode` (`string`): The mode configures the repository to serve artifacts from different sources. Default value: &#34;STANDARD_REPOSITORY&#34; Possible values: [&#34;STANDARD_REPOSITORY&#34;, &#34;VIRTUAL_REPOSITORY&#34;, &#34;REMOTE_REPOSITORY&#34;] When `null`, the `mode` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `repository_id` (`string`): The last part of the repository name, for example:
&#34;repo1&#34;
  - `cleanup_policies` (`list[obj]`): Cleanup policies for this repository. Cleanup policies indicate when
certain package versions can be automatically deleted.
Map keys are policy IDs supplied by users during policy creation. They must
unique within a repository and be under 128 characters in length. When `null`, the `cleanup_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.cleanup_policies.new](#fn-cleanup_policiesnew) constructor.
  - `docker_config` (`list[obj]`): Docker repository config contains repository level configuration for the repositories of docker type. When `null`, the `docker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.docker_config.new](#fn-docker_confignew) constructor.
  - `maven_config` (`list[obj]`): MavenRepositoryConfig is maven related repository details.
Provides additional configuration details for repositories of the maven
format type. When `null`, the `maven_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.maven_config.new](#fn-maven_confignew) constructor.
  - `remote_repository_config` (`list[obj]`): Configuration specific for a Remote Repository. When `null`, the `remote_repository_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.remote_repository_config.new](#fn-remote_repository_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.timeouts.new](#fn-timeoutsnew) constructor.
  - `virtual_repository_config` (`list[obj]`): Configuration specific for a Virtual Repository. When `null`, the `virtual_repository_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.virtual_repository_config.new](#fn-virtual_repository_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_artifact_registry_repository.newAttrs` constructs a new object with attributes and blocks configured for the `google_artifact_registry_repository`
Terraform resource.

Unlike [google-beta.google_artifact_registry_repository.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cleanup_policy_dry_run` (`bool`): If true, the cleanup pipeline is prevented from deleting versions in this
repository. When `null`, the `cleanup_policy_dry_run` field will be omitted from the resulting object.
  - `description` (`string`): The user-provided description of the repository. When `null`, the `description` field will be omitted from the resulting object.
  - `format` (`string`): The format of packages that are stored in the repository. Supported formats
can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
You can only create alpha formats if you are a member of the
[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  - `kms_key_name` (`string`): The Cloud KMS resource name of the customer managed encryption key that’s
used to encrypt the contents of the Repository. Has the form:
&#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key&#39;.
This value may not be changed after the Repository has been created. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels with user-defined metadata.
This field may contain up to 64 entries. Label keys and values may be no
longer than 63 characters. Label keys must begin with a lowercase letter
and may only contain lowercase letters, numeric characters, underscores,
and dashes. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this repository is located in. When `null`, the `location` field will be omitted from the resulting object.
  - `mode` (`string`): The mode configures the repository to serve artifacts from different sources. Default value: &#34;STANDARD_REPOSITORY&#34; Possible values: [&#34;STANDARD_REPOSITORY&#34;, &#34;VIRTUAL_REPOSITORY&#34;, &#34;REMOTE_REPOSITORY&#34;] When `null`, the `mode` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `repository_id` (`string`): The last part of the repository name, for example:
&#34;repo1&#34;
  - `cleanup_policies` (`list[obj]`): Cleanup policies for this repository. Cleanup policies indicate when
certain package versions can be automatically deleted.
Map keys are policy IDs supplied by users during policy creation. They must
unique within a repository and be under 128 characters in length. When `null`, the `cleanup_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.cleanup_policies.new](#fn-cleanup_policiesnew) constructor.
  - `docker_config` (`list[obj]`): Docker repository config contains repository level configuration for the repositories of docker type. When `null`, the `docker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.docker_config.new](#fn-docker_confignew) constructor.
  - `maven_config` (`list[obj]`): MavenRepositoryConfig is maven related repository details.
Provides additional configuration details for repositories of the maven
format type. When `null`, the `maven_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.maven_config.new](#fn-maven_confignew) constructor.
  - `remote_repository_config` (`list[obj]`): Configuration specific for a Remote Repository. When `null`, the `remote_repository_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.remote_repository_config.new](#fn-remote_repository_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.timeouts.new](#fn-timeoutsnew) constructor.
  - `virtual_repository_config` (`list[obj]`): Configuration specific for a Virtual Repository. When `null`, the `virtual_repository_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.virtual_repository_config.new](#fn-virtual_repository_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_artifact_registry_repository` resource into the root Terraform configuration.


### fn withCleanupPolicies

```ts
withCleanupPolicies()
```

`google-beta.list[obj].withCleanupPolicies` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cleanup_policies field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withCleanupPoliciesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cleanup_policies` field.


### fn withCleanupPoliciesMixin

```ts
withCleanupPoliciesMixin()
```

`google-beta.list[obj].withCleanupPoliciesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cleanup_policies field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withCleanupPolicies](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cleanup_policies` field.


### fn withCleanupPolicyDryRun

```ts
withCleanupPolicyDryRun()
```

`google-beta.bool.withCleanupPolicyDryRun` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the cleanup_policy_dry_run field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `cleanup_policy_dry_run` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDockerConfig

```ts
withDockerConfig()
```

`google-beta.list[obj].withDockerConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the docker_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withDockerConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `docker_config` field.


### fn withDockerConfigMixin

```ts
withDockerConfigMixin()
```

`google-beta.list[obj].withDockerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the docker_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDockerConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `docker_config` field.


### fn withFormat

```ts
withFormat()
```

`google-beta.string.withFormat` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the format field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `format` field.


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


### fn withLocation

```ts
withLocation()
```

`google-beta.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMavenConfig

```ts
withMavenConfig()
```

`google-beta.list[obj].withMavenConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maven_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withMavenConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maven_config` field.


### fn withMavenConfigMixin

```ts
withMavenConfigMixin()
```

`google-beta.list[obj].withMavenConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maven_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMavenConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maven_config` field.


### fn withMode

```ts
withMode()
```

`google-beta.string.withMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `mode` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRemoteRepositoryConfig

```ts
withRemoteRepositoryConfig()
```

`google-beta.list[obj].withRemoteRepositoryConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the remote_repository_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withRemoteRepositoryConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `remote_repository_config` field.


### fn withRemoteRepositoryConfigMixin

```ts
withRemoteRepositoryConfigMixin()
```

`google-beta.list[obj].withRemoteRepositoryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the remote_repository_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRemoteRepositoryConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `remote_repository_config` field.


### fn withRepositoryId

```ts
withRepositoryId()
```

`google-beta.string.withRepositoryId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the repository_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `repository_id` field.


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


### fn withVirtualRepositoryConfig

```ts
withVirtualRepositoryConfig()
```

`google-beta.list[obj].withVirtualRepositoryConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the virtual_repository_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withVirtualRepositoryConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `virtual_repository_config` field.


### fn withVirtualRepositoryConfigMixin

```ts
withVirtualRepositoryConfigMixin()
```

`google-beta.list[obj].withVirtualRepositoryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the virtual_repository_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withVirtualRepositoryConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `virtual_repository_config` field.


## obj cleanup_policies



### fn cleanup_policies.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.cleanup_policies.new` constructs a new object with attributes and blocks configured for the `cleanup_policies`
Terraform sub block.



**Args**:
  - `action` (`string`): Policy action. Possible values: [&#34;DELETE&#34;, &#34;KEEP&#34;] When `null`, the `action` field will be omitted from the resulting object.
  - `condition` (`list[obj]`): Policy condition for matching versions. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.cleanup_policies.condition.new](#fn-cleanup_policiesconditionnew) constructor.
  - `most_recent_versions` (`list[obj]`): Policy condition for retaining a minimum number of versions. May only be
specified with a Keep action. When `null`, the `most_recent_versions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.cleanup_policies.most_recent_versions.new](#fn-cleanup_policiesmost_recent_versionsnew) constructor.

**Returns**:
  - An attribute object that represents the `cleanup_policies` sub block.


## obj cleanup_policies.condition



### fn cleanup_policies.condition.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.cleanup_policies.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `newer_than` (`string`): Match versions newer than a duration. When `null`, the `newer_than` field will be omitted from the resulting object.
  - `older_than` (`string`): Match versions older than a duration. When `null`, the `older_than` field will be omitted from the resulting object.
  - `package_name_prefixes` (`list`): Match versions by package prefix. Applied on any prefix match. When `null`, the `package_name_prefixes` field will be omitted from the resulting object.
  - `tag_prefixes` (`list`): Match versions by tag prefix. Applied on any prefix match. When `null`, the `tag_prefixes` field will be omitted from the resulting object.
  - `tag_state` (`string`): Match versions by tag status. Default value: &#34;ANY&#34; Possible values: [&#34;TAGGED&#34;, &#34;UNTAGGED&#34;, &#34;ANY&#34;] When `null`, the `tag_state` field will be omitted from the resulting object.
  - `version_name_prefixes` (`list`): Match versions by version name prefix. Applied on any prefix match. When `null`, the `version_name_prefixes` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `condition` sub block.


## obj cleanup_policies.most_recent_versions



### fn cleanup_policies.most_recent_versions.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.cleanup_policies.most_recent_versions.new` constructs a new object with attributes and blocks configured for the `most_recent_versions`
Terraform sub block.



**Args**:
  - `keep_count` (`number`): Minimum number of versions to keep. When `null`, the `keep_count` field will be omitted from the resulting object.
  - `package_name_prefixes` (`list`): Match versions by package prefix. Applied on any prefix match. When `null`, the `package_name_prefixes` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `most_recent_versions` sub block.


## obj docker_config



### fn docker_config.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.docker_config.new` constructs a new object with attributes and blocks configured for the `docker_config`
Terraform sub block.



**Args**:
  - `immutable_tags` (`bool`): The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created. When `null`, the `immutable_tags` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `docker_config` sub block.


## obj maven_config



### fn maven_config.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.maven_config.new` constructs a new object with attributes and blocks configured for the `maven_config`
Terraform sub block.



**Args**:
  - `allow_snapshot_overwrites` (`bool`): The repository with this flag will allow publishing the same
snapshot versions. When `null`, the `allow_snapshot_overwrites` field will be omitted from the resulting object.
  - `version_policy` (`string`): Version policy defines the versions that the registry will accept. Default value: &#34;VERSION_POLICY_UNSPECIFIED&#34; Possible values: [&#34;VERSION_POLICY_UNSPECIFIED&#34;, &#34;RELEASE&#34;, &#34;SNAPSHOT&#34;] When `null`, the `version_policy` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `maven_config` sub block.


## obj remote_repository_config



### fn remote_repository_config.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.remote_repository_config.new` constructs a new object with attributes and blocks configured for the `remote_repository_config`
Terraform sub block.



**Args**:
  - `description` (`string`): The description of the remote source. When `null`, the `description` field will be omitted from the resulting object.
  - `docker_repository` (`list[obj]`): Specific settings for a Docker remote repository. When `null`, the `docker_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.remote_repository_config.docker_repository.new](#fn-remote_repository_configdocker_repositorynew) constructor.
  - `maven_repository` (`list[obj]`): Specific settings for a Maven remote repository. When `null`, the `maven_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.remote_repository_config.maven_repository.new](#fn-remote_repository_configmaven_repositorynew) constructor.
  - `npm_repository` (`list[obj]`): Specific settings for an Npm remote repository. When `null`, the `npm_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.remote_repository_config.npm_repository.new](#fn-remote_repository_confignpm_repositorynew) constructor.
  - `python_repository` (`list[obj]`): Specific settings for a Python remote repository. When `null`, the `python_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.remote_repository_config.python_repository.new](#fn-remote_repository_configpython_repositorynew) constructor.

**Returns**:
  - An attribute object that represents the `remote_repository_config` sub block.


## obj remote_repository_config.docker_repository



### fn remote_repository_config.docker_repository.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.remote_repository_config.docker_repository.new` constructs a new object with attributes and blocks configured for the `docker_repository`
Terraform sub block.



**Args**:
  - `public_repository` (`string`): Address of the remote repository. Default value: &#34;DOCKER_HUB&#34; Possible values: [&#34;DOCKER_HUB&#34;] When `null`, the `public_repository` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `docker_repository` sub block.


## obj remote_repository_config.maven_repository



### fn remote_repository_config.maven_repository.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.remote_repository_config.maven_repository.new` constructs a new object with attributes and blocks configured for the `maven_repository`
Terraform sub block.



**Args**:
  - `public_repository` (`string`): Address of the remote repository. Default value: &#34;MAVEN_CENTRAL&#34; Possible values: [&#34;MAVEN_CENTRAL&#34;] When `null`, the `public_repository` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `maven_repository` sub block.


## obj remote_repository_config.npm_repository



### fn remote_repository_config.npm_repository.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.remote_repository_config.npm_repository.new` constructs a new object with attributes and blocks configured for the `npm_repository`
Terraform sub block.



**Args**:
  - `public_repository` (`string`): Address of the remote repository. Default value: &#34;NPMJS&#34; Possible values: [&#34;NPMJS&#34;] When `null`, the `public_repository` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `npm_repository` sub block.


## obj remote_repository_config.python_repository



### fn remote_repository_config.python_repository.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.remote_repository_config.python_repository.new` constructs a new object with attributes and blocks configured for the `python_repository`
Terraform sub block.



**Args**:
  - `public_repository` (`string`): Address of the remote repository. Default value: &#34;PYPI&#34; Possible values: [&#34;PYPI&#34;] When `null`, the `public_repository` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `python_repository` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj virtual_repository_config



### fn virtual_repository_config.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.virtual_repository_config.new` constructs a new object with attributes and blocks configured for the `virtual_repository_config`
Terraform sub block.



**Args**:
  - `upstream_policies` (`list[obj]`): Policies that configure the upstream artifacts distributed by the Virtual
Repository. Upstream policies cannot be set on a standard repository. When `null`, the `upstream_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_artifact_registry_repository.virtual_repository_config.upstream_policies.new](#fn-virtual_repository_configupstream_policiesnew) constructor.

**Returns**:
  - An attribute object that represents the `virtual_repository_config` sub block.


## obj virtual_repository_config.upstream_policies



### fn virtual_repository_config.upstream_policies.new

```ts
new()
```


`google-beta.google_artifact_registry_repository.virtual_repository_config.upstream_policies.new` constructs a new object with attributes and blocks configured for the `upstream_policies`
Terraform sub block.



**Args**:
  - `priority` (`number`): Entries with a greater priority value take precedence in the pull order. When `null`, the `priority` field will be omitted from the resulting object.
  - `repository` (`string`): A reference to the repository resource, for example:
&#34;projects/p1/locations/us-central1/repository/repo1&#34;. When `null`, the `repository` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `upstream_policies` sub block.
