---
permalink: /google_compute_region_security_policy/
---

# google_compute_region_security_policy

`google_compute_region_security_policy` represents the `google-beta_google_compute_region_security_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDdosProtectionConfig()`](#fn-withddosprotectionconfig)
* [`fn withDdosProtectionConfigMixin()`](#fn-withddosprotectionconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withUserDefinedFields()`](#fn-withuserdefinedfields)
* [`fn withUserDefinedFieldsMixin()`](#fn-withuserdefinedfieldsmixin)
* [`obj ddos_protection_config`](#obj-ddos_protection_config)
  * [`fn new()`](#fn-ddos_protection_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj user_defined_fields`](#obj-user_defined_fields)
  * [`fn new()`](#fn-user_defined_fieldsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_region_security_policy.new` injects a new `google-beta_google_compute_region_security_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_region_security_policy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_region_security_policy` using the reference:

    $._ref.google-beta_google_compute_region_security_policy.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_region_security_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.
Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created Region Security Policy should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `type` (`string`): The type indicates the intended use of the security policy.
- CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers.
- CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google&#39;s cache.
- CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application.
This field can be set only at resource creation time. Possible values: [&#34;CLOUD_ARMOR&#34;, &#34;CLOUD_ARMOR_EDGE&#34;, &#34;CLOUD_ARMOR_NETWORK&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `ddos_protection_config` (`list[obj]`): Configuration for Google Cloud Armor DDOS Proctection Config. When `null`, the `ddos_protection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.ddos_protection_config.new](#fn-ddos_protection_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.timeouts.new](#fn-timeoutsnew) constructor.
  - `user_defined_fields` (`list[obj]`): Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies.
A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits.
Rules may then specify matching values for these fields. When `null`, the `user_defined_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.user_defined_fields.new](#fn-user_defined_fieldsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_region_security_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_region_security_policy`
Terraform resource.

Unlike [google-beta.google_compute_region_security_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.
Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created Region Security Policy should reside.
If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `type` (`string`): The type indicates the intended use of the security policy.
- CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers.
- CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google&#39;s cache.
- CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application.
This field can be set only at resource creation time. Possible values: [&#34;CLOUD_ARMOR&#34;, &#34;CLOUD_ARMOR_EDGE&#34;, &#34;CLOUD_ARMOR_NETWORK&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `ddos_protection_config` (`list[obj]`): Configuration for Google Cloud Armor DDOS Proctection Config. When `null`, the `ddos_protection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.ddos_protection_config.new](#fn-ddos_protection_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.timeouts.new](#fn-timeoutsnew) constructor.
  - `user_defined_fields` (`list[obj]`): Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies.
A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits.
Rules may then specify matching values for these fields. When `null`, the `user_defined_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy.user_defined_fields.new](#fn-user_defined_fieldsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_region_security_policy` resource into the root Terraform configuration.


### fn withDdosProtectionConfig

```ts
withDdosProtectionConfig()
```

`google-beta.list[obj].withDdosProtectionConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ddos_protection_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withDdosProtectionConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ddos_protection_config` field.


### fn withDdosProtectionConfigMixin

```ts
withDdosProtectionConfigMixin()
```

`google-beta.list[obj].withDdosProtectionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ddos_protection_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withDdosProtectionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ddos_protection_config` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withRegion

```ts
withRegion()
```

`google-beta.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


### fn withUserDefinedFields

```ts
withUserDefinedFields()
```

`google-beta.list[obj].withUserDefinedFields` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the user_defined_fields field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withUserDefinedFieldsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `user_defined_fields` field.


### fn withUserDefinedFieldsMixin

```ts
withUserDefinedFieldsMixin()
```

`google-beta.list[obj].withUserDefinedFieldsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the user_defined_fields field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withUserDefinedFields](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `user_defined_fields` field.


## obj ddos_protection_config



### fn ddos_protection_config.new

```ts
new()
```


`google-beta.google_compute_region_security_policy.ddos_protection_config.new` constructs a new object with attributes and blocks configured for the `ddos_protection_config`
Terraform sub block.



**Args**:
  - `ddos_protection` (`string`): Google Cloud Armor offers the following options to help protect systems against DDoS attacks:
- STANDARD: basic always-on protection for network load balancers, protocol forwarding, or VMs with public IP addresses.
- ADVANCED: additional protections for Managed Protection Plus subscribers who use network load balancers, protocol forwarding, or VMs with public IP addresses.
- ADVANCED_PREVIEW: flag to enable the security policy in preview mode. Possible values: [&#34;ADVANCED&#34;, &#34;ADVANCED_PREVIEW&#34;, &#34;STANDARD&#34;]

**Returns**:
  - An attribute object that represents the `ddos_protection_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_compute_region_security_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj user_defined_fields



### fn user_defined_fields.new

```ts
new()
```


`google-beta.google_compute_region_security_policy.user_defined_fields.new` constructs a new object with attributes and blocks configured for the `user_defined_fields`
Terraform sub block.



**Args**:
  - `base` (`string`): The base relative to which &#39;offset&#39; is measured. Possible values are:
- IPV4: Points to the beginning of the IPv4 header.
- IPV6: Points to the beginning of the IPv6 header.
- TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments.
- UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;, &#34;TCP&#34;, &#34;UDP&#34;]
  - `mask` (`string`): If specified, apply this mask (bitwise AND) to the field to ignore bits before matching.
Encoded as a hexadecimal number (starting with &#34;0x&#34;).
The last byte of the field (in network byte order) corresponds to the least significant byte of the mask. When `null`, the `mask` field will be omitted from the resulting object.
  - `name` (`string`): The name of this field. Must be unique within the policy. When `null`, the `name` field will be omitted from the resulting object.
  - `offset` (`number`): Offset of the first byte of the field (in network byte order) relative to &#39;base&#39;. When `null`, the `offset` field will be omitted from the resulting object.
  - `size` (`number`): Size of the field in bytes. Valid values: 1-4. When `null`, the `size` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `user_defined_fields` sub block.
