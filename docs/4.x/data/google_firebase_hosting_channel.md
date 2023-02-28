---
permalink: /data/google_firebase_hosting_channel/
---

# data.google_firebase_hosting_channel

`google_firebase_hosting_channel` represents the `google-beta_google_firebase_hosting_channel` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withChannelId()`](#fn-withchannelid)
* [`fn withSiteId()`](#fn-withsiteid)

## Fields

### fn new

```ts
new()
```


`google-beta.data.google_firebase_hosting_channel.new` injects a new `data_google-beta_google_firebase_hosting_channel` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.data.google_firebase_hosting_channel.new('some_id')

You can get the reference to the `id` field of the created `google-beta.data.google_firebase_hosting_channel` using the reference:

    $._ref.data_google-beta_google_firebase_hosting_channel.some_id.get('id')

This is the same as directly entering `"${ data_google-beta_google_firebase_hosting_channel.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `channel_id` (`string`): Required. Immutable. A unique ID within the site that identifies the channel.
  - `site_id` (`string`): Required. The ID of the site in which to create this channel.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.data.google_firebase_hosting_channel.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_channel`
Terraform data source.

Unlike [google-beta.data.google_firebase_hosting_channel.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `channel_id` (`string`): Required. Immutable. A unique ID within the site that identifies the channel.
  - `site_id` (`string`): Required. The ID of the site in which to create this channel.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `google_firebase_hosting_channel` data source into the root Terraform configuration.


### fn withChannelId

```ts
withChannelId()
```

`google-beta.string.withChannelId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the channel_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `channel_id` field.


### fn withSiteId

```ts
withSiteId()
```

`google-beta.string.withSiteId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the site_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `site_id` field.
