---
permalink: /google_firebase_hosting_release/
---

# google_firebase_hosting_release

`google_firebase_hosting_release` represents the `google-beta_google_firebase_hosting_release` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withChannelId()`](#fn-withchannelid)
* [`fn withMessage()`](#fn-withmessage)
* [`fn withSiteId()`](#fn-withsiteid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withVersionName()`](#fn-withversionname)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_firebase_hosting_release.new` injects a new `google-beta_google_firebase_hosting_release` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_firebase_hosting_release.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_firebase_hosting_release` using the reference:

    $._ref.google-beta_google_firebase_hosting_release.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_firebase_hosting_release.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `channel_id` (`string`): The ID of the channel to which the release belongs. If not provided, the release will
belong to the default &#34;live&#34; channel When `null`, the `channel_id` field will be omitted from the resulting object.
  - `message` (`string`): The deploy description when the release was created. The value can be up to 512 characters. When `null`, the `message` field will be omitted from the resulting object.
  - `site_id` (`string`): Required. The ID of the site to which the release belongs.
  - `type` (`string`): The type of the release; indicates what happened to the content of the site. There is no need to specify
&#39;DEPLOY&#39; or &#39;ROLLBACK&#39; type if a &#39;version_name&#39; is provided.
DEPLOY: A version was uploaded to Firebase Hosting and released. Output only.
ROLLBACK: The release points back to a previously deployed version. Output only.
SITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed Possible values: [&#34;DEPLOY&#34;, &#34;ROLLBACK&#34;, &#34;SITE_DISABLE&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `version_name` (`string`): The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
The content of the version specified will be actively displayed on the appropriate URL.
The Version must belong to the same site as in the &#39;site_id&#39;.
This parameter must be empty if the &#39;type&#39; of the release is &#39;SITE_DISABLE&#39;. When `null`, the `version_name` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_release.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_firebase_hosting_release.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_hosting_release`
Terraform resource.

Unlike [google-beta.google_firebase_hosting_release.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `channel_id` (`string`): The ID of the channel to which the release belongs. If not provided, the release will
belong to the default &#34;live&#34; channel When `null`, the `channel_id` field will be omitted from the resulting object.
  - `message` (`string`): The deploy description when the release was created. The value can be up to 512 characters. When `null`, the `message` field will be omitted from the resulting object.
  - `site_id` (`string`): Required. The ID of the site to which the release belongs.
  - `type` (`string`): The type of the release; indicates what happened to the content of the site. There is no need to specify
&#39;DEPLOY&#39; or &#39;ROLLBACK&#39; type if a &#39;version_name&#39; is provided.
DEPLOY: A version was uploaded to Firebase Hosting and released. Output only.
ROLLBACK: The release points back to a previously deployed version. Output only.
SITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed Possible values: [&#34;DEPLOY&#34;, &#34;ROLLBACK&#34;, &#34;SITE_DISABLE&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `version_name` (`string`): The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
The content of the version specified will be actively displayed on the appropriate URL.
The Version must belong to the same site as in the &#39;site_id&#39;.
This parameter must be empty if the &#39;type&#39; of the release is &#39;SITE_DISABLE&#39;. When `null`, the `version_name` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_hosting_release.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_hosting_release` resource into the root Terraform configuration.


### fn withChannelId

```ts
withChannelId()
```

`google-beta.string.withChannelId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the channel_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `channel_id` field.


### fn withMessage

```ts
withMessage()
```

`google-beta.string.withMessage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the message field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `message` field.


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


### fn withType

```ts
withType()
```

`google-beta.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


### fn withVersionName

```ts
withVersionName()
```

`google-beta.string.withVersionName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version_name` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_firebase_hosting_release.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
