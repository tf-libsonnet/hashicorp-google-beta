---
permalink: /google_storage_bucket_acl/
---

# google_storage_bucket_acl

`google_storage_bucket_acl` represents the `google-beta_google_storage_bucket_acl` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucket()`](#fn-withbucket)
* [`fn withDefaultAcl()`](#fn-withdefaultacl)
* [`fn withPredefinedAcl()`](#fn-withpredefinedacl)
* [`fn withRoleEntity()`](#fn-withroleentity)

## Fields

### fn new

```ts
new()
```


`google-beta.google_storage_bucket_acl.new` injects a new `google-beta_google_storage_bucket_acl` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_storage_bucket_acl.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_storage_bucket_acl` using the reference:

    $._ref.google-beta_google_storage_bucket_acl.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_storage_bucket_acl.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket` (`string`): The name of the bucket it applies to.
  - `default_acl` (`string`): Configure this ACL to be the default ACL. When `null`, the `default_acl` field will be omitted from the resulting object.
  - `predefined_acl` (`string`): The canned GCS ACL to apply. Must be set if role_entity is not. When `null`, the `predefined_acl` field will be omitted from the resulting object.
  - `role_entity` (`list`): List of role/entity pairs in the form ROLE:entity. See GCS Bucket ACL documentation  for more details. Must be set if predefined_acl is not. When `null`, the `role_entity` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_storage_bucket_acl.newAttrs` constructs a new object with attributes and blocks configured for the `google_storage_bucket_acl`
Terraform resource.

Unlike [google-beta.google_storage_bucket_acl.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket` (`string`): The name of the bucket it applies to.
  - `default_acl` (`string`): Configure this ACL to be the default ACL. When `null`, the `default_acl` field will be omitted from the resulting object.
  - `predefined_acl` (`string`): The canned GCS ACL to apply. Must be set if role_entity is not. When `null`, the `predefined_acl` field will be omitted from the resulting object.
  - `role_entity` (`list`): List of role/entity pairs in the form ROLE:entity. See GCS Bucket ACL documentation  for more details. Must be set if predefined_acl is not. When `null`, the `role_entity` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_storage_bucket_acl` resource into the root Terraform configuration.


### fn withBucket

```ts
withBucket()
```

`google-beta.string.withBucket` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bucket field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket` field.


### fn withDefaultAcl

```ts
withDefaultAcl()
```

`google-beta.string.withDefaultAcl` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the default_acl field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `default_acl` field.


### fn withPredefinedAcl

```ts
withPredefinedAcl()
```

`google-beta.string.withPredefinedAcl` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the predefined_acl field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `predefined_acl` field.


### fn withRoleEntity

```ts
withRoleEntity()
```

`google-beta.list.withRoleEntity` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the role_entity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `role_entity` field.
