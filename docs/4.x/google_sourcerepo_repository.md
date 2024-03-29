---
permalink: /google_sourcerepo_repository/
---

# google_sourcerepo_repository

`google_sourcerepo_repository` represents the `google-beta_google_sourcerepo_repository` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withPubsubConfigs()`](#fn-withpubsubconfigs)
* [`fn withPubsubConfigsMixin()`](#fn-withpubsubconfigsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj pubsub_configs`](#obj-pubsub_configs)
  * [`fn new()`](#fn-pubsub_configsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_sourcerepo_repository.new` injects a new `google-beta_google_sourcerepo_repository` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_sourcerepo_repository.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_sourcerepo_repository` using the reference:

    $._ref.google-beta_google_sourcerepo_repository.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_sourcerepo_repository.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `name` (`string`): Resource name of the repository, of the form &#39;{{repo}}&#39;.
The repo name may contain slashes. eg, &#39;name/with/slash&#39;
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `pubsub_configs` (`list[obj]`): How this repository publishes a change in the repository through Cloud Pub/Sub.
Keyed by the topic names. When `null`, the `pubsub_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_sourcerepo_repository.pubsub_configs.new](#fn-pubsub_configsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_sourcerepo_repository.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_sourcerepo_repository.newAttrs` constructs a new object with attributes and blocks configured for the `google_sourcerepo_repository`
Terraform resource.

Unlike [google-beta.google_sourcerepo_repository.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): Resource name of the repository, of the form &#39;{{repo}}&#39;.
The repo name may contain slashes. eg, &#39;name/with/slash&#39;
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `pubsub_configs` (`list[obj]`): How this repository publishes a change in the repository through Cloud Pub/Sub.
Keyed by the topic names. When `null`, the `pubsub_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_sourcerepo_repository.pubsub_configs.new](#fn-pubsub_configsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_sourcerepo_repository.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_sourcerepo_repository` resource into the root Terraform configuration.


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


### fn withPubsubConfigs

```ts
withPubsubConfigs()
```

`google-beta.list[obj].withPubsubConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pubsub_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withPubsubConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pubsub_configs` field.


### fn withPubsubConfigsMixin

```ts
withPubsubConfigsMixin()
```

`google-beta.list[obj].withPubsubConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the pubsub_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withPubsubConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `pubsub_configs` field.


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


## obj pubsub_configs



### fn pubsub_configs.new

```ts
new()
```


`google-beta.google_sourcerepo_repository.pubsub_configs.new` constructs a new object with attributes and blocks configured for the `pubsub_configs`
Terraform sub block.



**Args**:
  - `message_format` (`string`): The format of the Cloud Pub/Sub messages.
- PROTOBUF: The message payload is a serialized protocol buffer of SourceRepoEvent.
- JSON: The message payload is a JSON string of SourceRepoEvent. Possible values: [&#34;PROTOBUF&#34;, &#34;JSON&#34;]
  - `service_account_email` (`string`): Email address of the service account used for publishing Cloud Pub/Sub messages.
This service account needs to be in the same project as the PubsubConfig. When added,
the caller needs to have iam.serviceAccounts.actAs permission on this service account.
If unspecified, it defaults to the compute engine default service account. When `null`, the `service_account_email` field will be omitted from the resulting object.
  - `topic` (`string`): Set the `topic` field on the resulting object.

**Returns**:
  - An attribute object that represents the `pubsub_configs` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_sourcerepo_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
