---
permalink: /google_container_analysis_note_iam_policy/
---

# google_container_analysis_note_iam_policy

`google_container_analysis_note_iam_policy` represents the `google-beta_google_container_analysis_note_iam_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withNote()`](#fn-withnote)
* [`fn withPolicyData()`](#fn-withpolicydata)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google-beta.google_container_analysis_note_iam_policy.new` injects a new `google-beta_google_container_analysis_note_iam_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_container_analysis_note_iam_policy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_container_analysis_note_iam_policy` using the reference:

    $._ref.google-beta_google_container_analysis_note_iam_policy.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_container_analysis_note_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `note` (`string`): Set the `note` field on the resulting resource block.
  - `policy_data` (`string`): Set the `policy_data` field on the resulting resource block.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_container_analysis_note_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_container_analysis_note_iam_policy`
Terraform resource.

Unlike [google-beta.google_container_analysis_note_iam_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `note` (`string`): Set the `note` field on the resulting object.
  - `policy_data` (`string`): Set the `policy_data` field on the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_container_analysis_note_iam_policy` resource into the root Terraform configuration.


### fn withNote

```ts
withNote()
```

`google-beta.string.withNote` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the note field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `note` field.


### fn withPolicyData

```ts
withPolicyData()
```

`google-beta.string.withPolicyData` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the policy_data field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `policy_data` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.
