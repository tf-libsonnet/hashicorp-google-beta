---
permalink: /google_firebase_android_app/
---

# google_firebase_android_app

`google_firebase_android_app` represents the `google-beta_google_firebase_android_app` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApiKeyId()`](#fn-withapikeyid)
* [`fn withDeletionPolicy()`](#fn-withdeletionpolicy)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withPackageName()`](#fn-withpackagename)
* [`fn withProject()`](#fn-withproject)
* [`fn withSha1Hashes()`](#fn-withsha1hashes)
* [`fn withSha256Hashes()`](#fn-withsha256hashes)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_firebase_android_app.new` injects a new `google-beta_google_firebase_android_app` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_firebase_android_app.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_firebase_android_app` using the reference:

    $._ref.google-beta_google_firebase_android_app.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_firebase_android_app.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `api_key_id` (`string`): The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. When `null`, the `api_key_id` field will be omitted from the resulting object.
  - `deletion_policy` (`string`): (Optional) Set to &#39;ABANDON&#39; to allow the AndroidApp to be untracked from terraform state
rather than deleted upon &#39;terraform destroy&#39;. This is useful because the AndroidApp may be
serving traffic. Set to &#39;DELETE&#39; to delete the AndroidApp. Defaults to &#39;DELETE&#39;. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `display_name` (`string`): The user-assigned display name of the AndroidApp.
  - `package_name` (`string`): Immutable. The canonical package name of the Android app as would appear in the Google Play
Developer Console. When `null`, the `package_name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `sha1_hashes` (`list`): The SHA1 certificate hashes for the AndroidApp. When `null`, the `sha1_hashes` field will be omitted from the resulting object.
  - `sha256_hashes` (`list`): The SHA256 certificate hashes for the AndroidApp. When `null`, the `sha256_hashes` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_android_app.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_firebase_android_app.newAttrs` constructs a new object with attributes and blocks configured for the `google_firebase_android_app`
Terraform resource.

Unlike [google-beta.google_firebase_android_app.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `api_key_id` (`string`): The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. When `null`, the `api_key_id` field will be omitted from the resulting object.
  - `deletion_policy` (`string`): (Optional) Set to &#39;ABANDON&#39; to allow the AndroidApp to be untracked from terraform state
rather than deleted upon &#39;terraform destroy&#39;. This is useful because the AndroidApp may be
serving traffic. Set to &#39;DELETE&#39; to delete the AndroidApp. Defaults to &#39;DELETE&#39;. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `display_name` (`string`): The user-assigned display name of the AndroidApp.
  - `package_name` (`string`): Immutable. The canonical package name of the Android app as would appear in the Google Play
Developer Console. When `null`, the `package_name` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `sha1_hashes` (`list`): The SHA1 certificate hashes for the AndroidApp. When `null`, the `sha1_hashes` field will be omitted from the resulting object.
  - `sha256_hashes` (`list`): The SHA256 certificate hashes for the AndroidApp. When `null`, the `sha256_hashes` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_firebase_android_app.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_firebase_android_app` resource into the root Terraform configuration.


### fn withApiKeyId

```ts
withApiKeyId()
```

`google-beta.string.withApiKeyId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the api_key_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `api_key_id` field.


### fn withDeletionPolicy

```ts
withDeletionPolicy()
```

`google-beta.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deletion_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deletion_policy` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withPackageName

```ts
withPackageName()
```

`google-beta.string.withPackageName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the package_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `package_name` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSha1Hashes

```ts
withSha1Hashes()
```

`google-beta.list.withSha1Hashes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the sha1_hashes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `sha1_hashes` field.


### fn withSha256Hashes

```ts
withSha256Hashes()
```

`google-beta.list.withSha256Hashes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the sha256_hashes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `sha256_hashes` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_firebase_android_app.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
