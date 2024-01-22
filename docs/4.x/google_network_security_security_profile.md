---
permalink: /google_network_security_security_profile/
---

# google_network_security_security_profile

`google_network_security_security_profile` represents the `google-beta_google_network_security_security_profile` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withParent()`](#fn-withparent)
* [`fn withThreatPreventionProfile()`](#fn-withthreatpreventionprofile)
* [`fn withThreatPreventionProfileMixin()`](#fn-withthreatpreventionprofilemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj threat_prevention_profile`](#obj-threat_prevention_profile)
  * [`fn new()`](#fn-threat_prevention_profilenew)
  * [`obj threat_prevention_profile.severity_overrides`](#obj-threat_prevention_profileseverity_overrides)
    * [`fn new()`](#fn-threat_prevention_profileseverity_overridesnew)
  * [`obj threat_prevention_profile.threat_overrides`](#obj-threat_prevention_profilethreat_overrides)
    * [`fn new()`](#fn-threat_prevention_profilethreat_overridesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_network_security_security_profile.new` injects a new `google-beta_google_network_security_security_profile` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_network_security_security_profile.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_network_security_security_profile` using the reference:

    $._ref.google-beta_google_network_security_security_profile.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_network_security_security_profile.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of the security profile. The Max length is 512 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): A map of key/value label pairs to assign to the resource.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the security profile.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): The name of the security profile resource.
  - `parent` (`string`): The name of the parent this security profile belongs to.
Format: organizations/{organization_id}. When `null`, the `parent` field will be omitted from the resulting object.
  - `type` (`string`): The type of security profile. Possible values: [&#34;THREAT_PREVENTION&#34;]
  - `threat_prevention_profile` (`list[obj]`): The threat prevention configuration for the security profile. When `null`, the `threat_prevention_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.threat_prevention_profile.new](#fn-threat_prevention_profilenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_network_security_security_profile.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_security_profile`
Terraform resource.

Unlike [google-beta.google_network_security_security_profile.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of the security profile. The Max length is 512 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): A map of key/value label pairs to assign to the resource.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the security profile.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): The name of the security profile resource.
  - `parent` (`string`): The name of the parent this security profile belongs to.
Format: organizations/{organization_id}. When `null`, the `parent` field will be omitted from the resulting object.
  - `type` (`string`): The type of security profile. Possible values: [&#34;THREAT_PREVENTION&#34;]
  - `threat_prevention_profile` (`list[obj]`): The threat prevention configuration for the security profile. When `null`, the `threat_prevention_profile` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.threat_prevention_profile.new](#fn-threat_prevention_profilenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_security_profile` resource into the root Terraform configuration.


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


### fn withParent

```ts
withParent()
```

`google-beta.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withThreatPreventionProfile

```ts
withThreatPreventionProfile()
```

`google-beta.list[obj].withThreatPreventionProfile` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the threat_prevention_profile field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withThreatPreventionProfileMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `threat_prevention_profile` field.


### fn withThreatPreventionProfileMixin

```ts
withThreatPreventionProfileMixin()
```

`google-beta.list[obj].withThreatPreventionProfileMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the threat_prevention_profile field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withThreatPreventionProfile](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `threat_prevention_profile` field.


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


## obj threat_prevention_profile



### fn threat_prevention_profile.new

```ts
new()
```


`google-beta.google_network_security_security_profile.threat_prevention_profile.new` constructs a new object with attributes and blocks configured for the `threat_prevention_profile`
Terraform sub block.



**Args**:
  - `severity_overrides` (`list[obj]`): The configuration for overriding threats actions by severity match. When `null`, the `severity_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.threat_prevention_profile.severity_overrides.new](#fn-threat_prevention_profileseverity_overridesnew) constructor.
  - `threat_overrides` (`list[obj]`): The configuration for overriding threats actions by threat id match.
If a threat is matched both by configuration provided in severity overrides
and threat overrides, the threat overrides action is applied. When `null`, the `threat_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_security_profile.threat_prevention_profile.threat_overrides.new](#fn-threat_prevention_profilethreat_overridesnew) constructor.

**Returns**:
  - An attribute object that represents the `threat_prevention_profile` sub block.


## obj threat_prevention_profile.severity_overrides



### fn threat_prevention_profile.severity_overrides.new

```ts
new()
```


`google-beta.google_network_security_security_profile.threat_prevention_profile.severity_overrides.new` constructs a new object with attributes and blocks configured for the `severity_overrides`
Terraform sub block.



**Args**:
  - `action` (`string`): Threat action override. Possible values: [&#34;ALERT&#34;, &#34;ALLOW&#34;, &#34;DEFAULT_ACTION&#34;, &#34;DENY&#34;]
  - `severity` (`string`): Severity level to match. Possible values: [&#34;CRITICAL&#34;, &#34;HIGH&#34;, &#34;INFORMATIONAL&#34;, &#34;LOW&#34;, &#34;MEDIUM&#34;]

**Returns**:
  - An attribute object that represents the `severity_overrides` sub block.


## obj threat_prevention_profile.threat_overrides



### fn threat_prevention_profile.threat_overrides.new

```ts
new()
```


`google-beta.google_network_security_security_profile.threat_prevention_profile.threat_overrides.new` constructs a new object with attributes and blocks configured for the `threat_overrides`
Terraform sub block.



**Args**:
  - `action` (`string`): Threat action. Possible values: [&#34;ALERT&#34;, &#34;ALLOW&#34;, &#34;DEFAULT_ACTION&#34;, &#34;DENY&#34;]
  - `threat_id` (`string`): Vendor-specific ID of a threat to override.

**Returns**:
  - An attribute object that represents the `threat_overrides` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_network_security_security_profile.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
