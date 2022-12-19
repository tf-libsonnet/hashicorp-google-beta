---
permalink: /google_vertex_ai_featurestore_entitytype_iam_policy/
---

# google_vertex_ai_featurestore_entitytype_iam_policy

`google_vertex_ai_featurestore_entitytype_iam_policy` represents the `google-beta_google_vertex_ai_featurestore_entitytype_iam_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withEntitytype()`](#fn-withentitytype)
* [`fn withFeaturestore()`](#fn-withfeaturestore)
* [`fn withPolicyData()`](#fn-withpolicydata)

## Fields

### fn new

```ts
new()
```


`google-beta.google_vertex_ai_featurestore_entitytype_iam_policy.new` injects a new `google-beta_google_vertex_ai_featurestore_entitytype_iam_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_vertex_ai_featurestore_entitytype_iam_policy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_vertex_ai_featurestore_entitytype_iam_policy` using the reference:

    $._ref.google-beta_google_vertex_ai_featurestore_entitytype_iam_policy.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_vertex_ai_featurestore_entitytype_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `entitytype` (`string`): 
  - `featurestore` (`string`): 
  - `policy_data` (`string`): 

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_vertex_ai_featurestore_entitytype_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_vertex_ai_featurestore_entitytype_iam_policy`
Terraform resource.

Unlike [google-beta.google_vertex_ai_featurestore_entitytype_iam_policy.new](#fn-googlevertexaifeaturestoreentitytypeiampolicynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `entitytype` (`string`): 
  - `featurestore` (`string`): 
  - `policy_data` (`string`): 

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_vertex_ai_featurestore_entitytype_iam_policy` resource into the root Terraform configuration.


### fn withEntitytype

```ts
withEntitytype()
```

`google-beta.google_vertex_ai_featurestore_entitytype_iam_policy.withEntitytype` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype_iam_policy`
Terraform resource block to set or update the entitytype field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `entitytype` field.


### fn withFeaturestore

```ts
withFeaturestore()
```

`google-beta.google_vertex_ai_featurestore_entitytype_iam_policy.withFeaturestore` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype_iam_policy`
Terraform resource block to set or update the featurestore field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `featurestore` field.


### fn withPolicyData

```ts
withPolicyData()
```

`google-beta.google_vertex_ai_featurestore_entitytype_iam_policy.withPolicyData` constructs a mixin object that can be merged into the `google_vertex_ai_featurestore_entitytype_iam_policy`
Terraform resource block to set or update the policy_data field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `policy_data` field.
