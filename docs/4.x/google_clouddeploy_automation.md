---
permalink: /google_clouddeploy_automation/
---

# google_clouddeploy_automation

`google_clouddeploy_automation` represents the `google-beta_google_clouddeploy_automation` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withDeliveryPipeline()`](#fn-withdeliverypipeline)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRules()`](#fn-withrules)
* [`fn withRulesMixin()`](#fn-withrulesmixin)
* [`fn withSelector()`](#fn-withselector)
* [`fn withSelectorMixin()`](#fn-withselectormixin)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withSuspended()`](#fn-withsuspended)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj rules`](#obj-rules)
  * [`fn new()`](#fn-rulesnew)
  * [`obj rules.advance_rollout_rule`](#obj-rulesadvance_rollout_rule)
    * [`fn new()`](#fn-rulesadvance_rollout_rulenew)
  * [`obj rules.promote_release_rule`](#obj-rulespromote_release_rule)
    * [`fn new()`](#fn-rulespromote_release_rulenew)
* [`obj selector`](#obj-selector)
  * [`fn new()`](#fn-selectornew)
  * [`obj selector.targets`](#obj-selectortargets)
    * [`fn new()`](#fn-selectortargetsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_clouddeploy_automation.new` injects a new `google-beta_google_clouddeploy_automation` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_clouddeploy_automation.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_clouddeploy_automation` using the reference:

    $._ref.google-beta_google_clouddeploy_automation.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_clouddeploy_automation.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (&#39;/&#39;). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (&#39;[a-z0-9A-Z]&#39;) with dashes (&#39;-&#39;), underscores (&#39;_&#39;), dots (&#39;.&#39;), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(&#39;.&#39;), not longer than 253 characters in total, followed by a slash (&#39;/&#39;). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `delivery_pipeline` (`string`): The delivery_pipeline for the resource
  - `description` (`string`): Optional. Description of the &#39;Automation&#39;. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 63 characters.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Name of the &#39;Automation&#39;.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  - `suspended` (`bool`): Optional. When Suspended, automation is deactivated from execution. When `null`, the `suspended` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.rules.new](#fn-rulesnew) constructor.
  - `selector` (`list[obj]`): Required. Selected resources to which the automation will be applied. When `null`, the `selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.selector.new](#fn-selectornew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_clouddeploy_automation.newAttrs` constructs a new object with attributes and blocks configured for the `google_clouddeploy_automation`
Terraform resource.

Unlike [google-beta.google_clouddeploy_automation.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (&#39;/&#39;). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (&#39;[a-z0-9A-Z]&#39;) with dashes (&#39;-&#39;), underscores (&#39;_&#39;), dots (&#39;.&#39;), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(&#39;.&#39;), not longer than 253 characters in total, followed by a slash (&#39;/&#39;). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `delivery_pipeline` (`string`): The delivery_pipeline for the resource
  - `description` (`string`): Optional. Description of the &#39;Automation&#39;. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 63 characters.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Name of the &#39;Automation&#39;.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  - `suspended` (`bool`): Optional. When Suspended, automation is deactivated from execution. When `null`, the `suspended` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.rules.new](#fn-rulesnew) constructor.
  - `selector` (`list[obj]`): Required. Selected resources to which the automation will be applied. When `null`, the `selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.selector.new](#fn-selectornew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_clouddeploy_automation` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google-beta.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withDeliveryPipeline

```ts
withDeliveryPipeline()
```

`google-beta.string.withDeliveryPipeline` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the delivery_pipeline field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `delivery_pipeline` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withRules

```ts
withRules()
```

`google-beta.list[obj].withRules` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rules field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withRulesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rules` field.


### fn withRulesMixin

```ts
withRulesMixin()
```

`google-beta.list[obj].withRulesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rules field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withRules](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rules` field.


### fn withSelector

```ts
withSelector()
```

`google-beta.list[obj].withSelector` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the selector field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withSelectorMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `selector` field.


### fn withSelectorMixin

```ts
withSelectorMixin()
```

`google-beta.list[obj].withSelectorMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the selector field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withSelector](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `selector` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google-beta.string.withServiceAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account` field.


### fn withSuspended

```ts
withSuspended()
```

`google-beta.bool.withSuspended` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the suspended field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `suspended` field.


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


## obj rules



### fn rules.new

```ts
new()
```


`google-beta.google_clouddeploy_automation.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `advance_rollout_rule` (`list[obj]`): Optional. The &#39;AdvanceRolloutRule&#39; will automatically advance a successful Rollout. When `null`, the `advance_rollout_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.rules.advance_rollout_rule.new](#fn-rulesadvance_rollout_rulenew) constructor.
  - `promote_release_rule` (`list[obj]`): Optional. &#39;PromoteReleaseRule&#39; will automatically promote a release from the current target to a specified target. When `null`, the `promote_release_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.rules.promote_release_rule.new](#fn-rulespromote_release_rulenew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj rules.advance_rollout_rule



### fn rules.advance_rollout_rule.new

```ts
new()
```


`google-beta.google_clouddeploy_automation.rules.advance_rollout_rule.new` constructs a new object with attributes and blocks configured for the `advance_rollout_rule`
Terraform sub block.



**Args**:
  - `source_phases` (`list`): Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: &#39;^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$&#39;. When `null`, the `source_phases` field will be omitted from the resulting object.
  - `wait` (`string`): Optional. How long to wait after a rollout is finished. When `null`, the `wait` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `advance_rollout_rule` sub block.


## obj rules.promote_release_rule



### fn rules.promote_release_rule.new

```ts
new()
```


`google-beta.google_clouddeploy_automation.rules.promote_release_rule.new` constructs a new object with attributes and blocks configured for the `promote_release_rule`
Terraform sub block.



**Args**:
  - `destination_phase` (`string`): Optional. The starting phase of the rollout created by this operation. Default to the first phase. When `null`, the `destination_phase` field will be omitted from the resulting object.
  - `destination_target_id` (`string`): Optional. The ID of the stage in the pipeline to which this &#39;Release&#39; is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine if the target is one of the stages in the promotion sequence defined in the pipeline. * &#34;@next&#34;, the next target in the promotion sequence. When `null`, the `destination_target_id` field will be omitted from the resulting object.
  - `wait` (`string`): Optional. How long the release need to be paused until being promoted to the next target. When `null`, the `wait` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `promote_release_rule` sub block.


## obj selector



### fn selector.new

```ts
new()
```


`google-beta.google_clouddeploy_automation.selector.new` constructs a new object with attributes and blocks configured for the `selector`
Terraform sub block.



**Args**:
  - `targets` (`list[obj]`): Contains attributes about a target. When `null`, the `targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_clouddeploy_automation.selector.targets.new](#fn-selectortargetsnew) constructor.

**Returns**:
  - An attribute object that represents the `selector` sub block.


## obj selector.targets



### fn selector.targets.new

```ts
new()
```


`google-beta.google_clouddeploy_automation.selector.targets.new` constructs a new object with attributes and blocks configured for the `targets`
Terraform sub block.



**Args**:
  - `labels` (`obj`): Target labels. When `null`, the `labels` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `targets` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_clouddeploy_automation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
