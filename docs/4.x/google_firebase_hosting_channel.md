---
permalink: /google_firebase_hosting_channel/
---

# google_firebase_hosting_channel

`google_firebase_hosting_channel` represents the `google-beta_google_firebase_hosting_channel` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withChannelId()`](#fn-withchannelid)
* [`fn withExpireTime()`](#fn-withexpiretime)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withRetainedReleaseCount()`](#fn-withretainedreleasecount)
* [`fn withSiteId()`](#fn-withsiteid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTtl()`](#fn-withttl)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_firebase_hosting_channel.new` injects a new `google-beta_google_firebase_hosting_channel` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_firebase_hosting_channel.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_firebase_hosting_channel` using the reference:

    $._ref.google-beta_google_firebase_hosting_channel.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_firebase_hosting_channel.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `channel_id` (`string`): Required. Immutable. A unique ID within the site that identifies the channel.
  - `expire_time` (`string`): The time at which the channel will be automatically deleted. If null, the channel
will not be automatically deleted. This field is present in the output whether it&#39;s
set directly or via the &#39;ttl&#39; field. When `null`, the `expire_time` field will be omitted from the resulting object.
  - `labels` (`obj`): Text labels used for extra metadata and/or filtering When `null`, the `labels` field will be omitted from the resulting object.
  - `retained_release_count` (`number`): The number of previous releases to retain on the channel for rollback or other
purposes. Must be a number between 1-100. Defaults to 10 for new channels. When `null`, the `retained_release_count` field will be omitted from the resulting object.
  - `site_id` (`string`): Required. The ID of the site in which to create this channel.
  - `ttl` (`string`): Input only. A time-to-live for this channel. Sets &#39;expire_time&#39; to the provided
duration past the time of the request. A duration in seconds with up to nine fractional
digits, terminated by &#39;s&#39;. Example: &#34;86400s&#34; (one day). When `null`, the `ttl` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_channel.timeouts.new](#fn-googlefirebasehostingchanneltimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_firebase_hosting_channel.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_channel`
Terraform resource.

Unlike [google-beta.google_firebase_hosting_channel.new](#fn-googlefirebasehostingchannelnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `channel_id` (`string`): Required. Immutable. A unique ID within the site that identifies the channel.
  - `expire_time` (`string`): The time at which the channel will be automatically deleted. If null, the channel
will not be automatically deleted. This field is present in the output whether it&#39;s
set directly or via the &#39;ttl&#39; field. When `null`, the `expire_time` field will be omitted from the resulting object.
  - `labels` (`obj`): Text labels used for extra metadata and/or filtering When `null`, the `labels` field will be omitted from the resulting object.
  - `retained_release_count` (`number`): The number of previous releases to retain on the channel for rollback or other
purposes. Must be a number between 1-100. Defaults to 10 for new channels. When `null`, the `retained_release_count` field will be omitted from the resulting object.
  - `site_id` (`string`): Required. The ID of the site in which to create this channel.
  - `ttl` (`string`): Input only. A time-to-live for this channel. Sets &#39;expire_time&#39; to the provided
duration past the time of the request. A duration in seconds with up to nine fractional
digits, terminated by &#39;s&#39;. Example: &#34;86400s&#34; (one day). When `null`, the `ttl` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_channel.timeouts.new](#fn-googlefirebasehostingchanneltimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_hosting_channel` resource into the root Terraform configuration.


### fn withChannelId

```ts
withChannelId()
```

`google-beta.string.withChannelId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the channel_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `channel_id` field.


### fn withExpireTime

```ts
withExpireTime()
```

`google-beta.string.withExpireTime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the expire_time field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `expire_time` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withRetainedReleaseCount

```ts
withRetainedReleaseCount()
```

`google-beta.number.withRetainedReleaseCount` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the retained_release_count field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `retained_release_count` field.


### fn withSiteId

```ts
withSiteId()
```

`google-beta.string.withSiteId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the site_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `site_id` field.


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


### fn withTtl

```ts
withTtl()
```

`google-beta.string.withTtl` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ttl field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ttl` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_firebase_hosting_channel.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
