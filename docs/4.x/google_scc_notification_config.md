---
permalink: /google_scc_notification_config/
---

# google_scc_notification_config

`google_scc_notification_config` represents the `google-beta_google_scc_notification_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfigId()`](#fn-withconfigid)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withOrganization()`](#fn-withorganization)
* [`fn withPubsubTopic()`](#fn-withpubsubtopic)
* [`fn withStreamingConfig()`](#fn-withstreamingconfig)
* [`fn withStreamingConfigMixin()`](#fn-withstreamingconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj streaming_config`](#obj-streaming_config)
  * [`fn new()`](#fn-streaming_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_scc_notification_config.new` injects a new `google-beta_google_scc_notification_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_scc_notification_config.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_scc_notification_config` using the reference:

    $._ref.google-beta_google_scc_notification_config.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_scc_notification_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `config_id` (`string`): This must be unique within the organization.
  - `description` (`string`): The description of the notification config (max of 1024 characters). When `null`, the `description` field will be omitted from the resulting object.
  - `organization` (`string`): The organization whose Cloud Security Command Center the Notification
Config lives in.
  - `pubsub_topic` (`string`): The Pub/Sub topic to send notifications to. Its format is
&#34;projects/[project_id]/topics/[topic]&#34;.
  - `streaming_config` (`list[obj]`): The config for triggering streaming-based notifications. When `null`, the `streaming_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_scc_notification_config.streaming_config.new](#fn-streaming_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_scc_notification_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_scc_notification_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_scc_notification_config`
Terraform resource.

Unlike [google-beta.google_scc_notification_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `config_id` (`string`): This must be unique within the organization.
  - `description` (`string`): The description of the notification config (max of 1024 characters). When `null`, the `description` field will be omitted from the resulting object.
  - `organization` (`string`): The organization whose Cloud Security Command Center the Notification
Config lives in.
  - `pubsub_topic` (`string`): The Pub/Sub topic to send notifications to. Its format is
&#34;projects/[project_id]/topics/[topic]&#34;.
  - `streaming_config` (`list[obj]`): The config for triggering streaming-based notifications. When `null`, the `streaming_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_scc_notification_config.streaming_config.new](#fn-streaming_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_scc_notification_config.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_scc_notification_config` resource into the root Terraform configuration.


### fn withConfigId

```ts
withConfigId()
```

`google-beta.string.withConfigId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the config_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `config_id` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withOrganization

```ts
withOrganization()
```

`google-beta.string.withOrganization` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the organization field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `organization` field.


### fn withPubsubTopic

```ts
withPubsubTopic()
```

`google-beta.string.withPubsubTopic` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the pubsub_topic field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `pubsub_topic` field.


### fn withStreamingConfig

```ts
withStreamingConfig()
```

`google-beta.list[obj].withStreamingConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the streaming_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withStreamingConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `streaming_config` field.


### fn withStreamingConfigMixin

```ts
withStreamingConfigMixin()
```

`google-beta.list[obj].withStreamingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the streaming_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withStreamingConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `streaming_config` field.


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


## obj streaming_config



### fn streaming_config.new

```ts
new()
```


`google-beta.google_scc_notification_config.streaming_config.new` constructs a new object with attributes and blocks configured for the `streaming_config`
Terraform sub block.



**Args**:
  - `filter` (`string`): Expression that defines the filter to apply across create/update
events of assets or findings as specified by the event type. The
expression is a list of zero or more restrictions combined via
logical operators AND and OR. Parentheses are supported, and OR
has higher precedence than AND.

Restrictions have the form &lt;field&gt; &lt;operator&gt; &lt;value&gt; and may have
a - character in front of them to indicate negation. The fields
map to those defined in the corresponding resource.

The supported operators are:

* = for all value types.
* &gt;, &lt;, &gt;=, &lt;= for integer values.
* :, meaning substring matching, for strings.

The supported value types are:

* string literals in quotes.
* integer literals without quotes.
* boolean literals true and false without quotes.

See
[Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
for information on how to write a filter.

**Returns**:
  - An attribute object that represents the `streaming_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_scc_notification_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
