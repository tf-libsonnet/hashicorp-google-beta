---
permalink: /google_compute_region_security_policy_rule/
---

# google_compute_region_security_policy_rule

`google_compute_region_security_policy_rule` represents the `google-beta_google_compute_region_security_policy_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAction()`](#fn-withaction)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withMatch()`](#fn-withmatch)
* [`fn withMatchMixin()`](#fn-withmatchmixin)
* [`fn withNetworkMatch()`](#fn-withnetworkmatch)
* [`fn withNetworkMatchMixin()`](#fn-withnetworkmatchmixin)
* [`fn withPreview()`](#fn-withpreview)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSecurityPolicy()`](#fn-withsecuritypolicy)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj match`](#obj-match)
  * [`fn new()`](#fn-matchnew)
  * [`obj match.config`](#obj-matchconfig)
    * [`fn new()`](#fn-matchconfignew)
* [`obj network_match`](#obj-network_match)
  * [`fn new()`](#fn-network_matchnew)
  * [`obj network_match.user_defined_fields`](#obj-network_matchuser_defined_fields)
    * [`fn new()`](#fn-network_matchuser_defined_fieldsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_region_security_policy_rule.new` injects a new `google-beta_google_compute_region_security_policy_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_region_security_policy_rule.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_region_security_policy_rule` using the reference:

    $._ref.google-beta_google_compute_region_security_policy_rule.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_region_security_policy_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `action` (`string`): The Action to perform when the rule is matched. The following are the valid actions:

* allow: allow access to target.

* deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.

* rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.

* redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.

* throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `preview` (`bool`): If set to true, the specified action is not enforced. When `null`, the `preview` field will be omitted from the resulting object.
  - `priority` (`number`): An integer indicating the priority of a rule in the list.
The priority must be a positive value between 0 and 2147483647.
Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created Region Security Policy rule should reside.
  - `security_policy` (`string`): The name of the security policy this rule belongs to.
  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against.
If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.match.new](#fn-matchnew) constructor.
  - `network_match` (`list[obj]`): A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding &#39;action&#39; is enforced.
The match criteria for a rule consists of built-in match fields (like &#39;srcIpRanges&#39;) and potentially multiple user-defined match fields (&#39;userDefinedFields&#39;).
Field values may be extracted directly from the packet or derived from it (e.g. &#39;srcRegionCodes&#39;). Some fields may not be present in every packet (e.g. &#39;srcPorts&#39;). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.
Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it&#39;s not required to be present. For strings specifying &#39;*&#39; is also equivalent to match all.
For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.
Example:
networkMatch: srcIpRanges: - &#34;192.0.2.0/24&#34; - &#34;198.51.100.0/24&#34; userDefinedFields: - name: &#34;ipv4_fragment_offset&#34; values: - &#34;1-0x1fff&#34;
The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named &#34;ipv4_fragment_offset&#34; with a value between 1 and 0x1fff inclusive When `null`, the `network_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.network_match.new](#fn-network_matchnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_region_security_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_region_security_policy_rule`
Terraform resource.

Unlike [google-beta.google_compute_region_security_policy_rule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `action` (`string`): The Action to perform when the rule is matched. The following are the valid actions:

* allow: allow access to target.

* deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.

* rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.

* redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.

* throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `preview` (`bool`): If set to true, the specified action is not enforced. When `null`, the `preview` field will be omitted from the resulting object.
  - `priority` (`number`): An integer indicating the priority of a rule in the list.
The priority must be a positive value between 0 and 2147483647.
Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The Region in which the created Region Security Policy rule should reside.
  - `security_policy` (`string`): The name of the security policy this rule belongs to.
  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against.
If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.match.new](#fn-matchnew) constructor.
  - `network_match` (`list[obj]`): A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding &#39;action&#39; is enforced.
The match criteria for a rule consists of built-in match fields (like &#39;srcIpRanges&#39;) and potentially multiple user-defined match fields (&#39;userDefinedFields&#39;).
Field values may be extracted directly from the packet or derived from it (e.g. &#39;srcRegionCodes&#39;). Some fields may not be present in every packet (e.g. &#39;srcPorts&#39;). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.
Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it&#39;s not required to be present. For strings specifying &#39;*&#39; is also equivalent to match all.
For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.
Example:
networkMatch: srcIpRanges: - &#34;192.0.2.0/24&#34; - &#34;198.51.100.0/24&#34; userDefinedFields: - name: &#34;ipv4_fragment_offset&#34; values: - &#34;1-0x1fff&#34;
The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named &#34;ipv4_fragment_offset&#34; with a value between 1 and 0x1fff inclusive When `null`, the `network_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.network_match.new](#fn-network_matchnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_region_security_policy_rule` resource into the root Terraform configuration.


### fn withAction

```ts
withAction()
```

`google-beta.string.withAction` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the action field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `action` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withMatch

```ts
withMatch()
```

`google-beta.list[obj].withMatch` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the match field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withMatchMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `match` field.


### fn withMatchMixin

```ts
withMatchMixin()
```

`google-beta.list[obj].withMatchMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the match field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMatch](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `match` field.


### fn withNetworkMatch

```ts
withNetworkMatch()
```

`google-beta.list[obj].withNetworkMatch` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_match field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withNetworkMatchMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_match` field.


### fn withNetworkMatchMixin

```ts
withNetworkMatchMixin()
```

`google-beta.list[obj].withNetworkMatchMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_match field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withNetworkMatch](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_match` field.


### fn withPreview

```ts
withPreview()
```

`google-beta.bool.withPreview` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the preview field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `preview` field.


### fn withPriority

```ts
withPriority()
```

`google-beta.number.withPriority` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `priority` field.


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


### fn withSecurityPolicy

```ts
withSecurityPolicy()
```

`google-beta.string.withSecurityPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the security_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `security_policy` field.


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


## obj match



### fn match.new

```ts
new()
```


`google-beta.google_compute_region_security_policy_rule.match.new` constructs a new object with attributes and blocks configured for the `match`
Terraform sub block.



**Args**:
  - `versioned_expr` (`string`): Preconfigured versioned expression. If this field is specified, config must also be specified.
Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding srcIpRange field in config. Possible values: [&#34;SRC_IPS_V1&#34;] When `null`, the `versioned_expr` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The configuration options available when specifying versionedExpr.
This field must be specified if versionedExpr is specified and cannot be specified if versionedExpr is not specified. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.match.config.new](#fn-matchconfignew) constructor.

**Returns**:
  - An attribute object that represents the `match` sub block.


## obj match.config



### fn match.config.new

```ts
new()
```


`google-beta.google_compute_region_security_policy_rule.match.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `src_ip_ranges` (`list`): CIDR IP address range. Maximum number of srcIpRanges allowed is 10. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj network_match



### fn network_match.new

```ts
new()
```


`google-beta.google_compute_region_security_policy_rule.network_match.new` constructs a new object with attributes and blocks configured for the `network_match`
Terraform sub block.



**Args**:
  - `dest_ip_ranges` (`list`): Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format. When `null`, the `dest_ip_ranges` field will be omitted from the resulting object.
  - `dest_ports` (`list`): Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. &#34;80&#34;) or range (e.g. &#34;0-1023&#34;). When `null`, the `dest_ports` field will be omitted from the resulting object.
  - `ip_protocols` (`list`): IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. &#34;6&#34;), range (e.g. &#34;253-254&#34;), or one of the following protocol names: &#34;tcp&#34;, &#34;udp&#34;, &#34;icmp&#34;, &#34;esp&#34;, &#34;ah&#34;, &#34;ipip&#34;, or &#34;sctp&#34;. When `null`, the `ip_protocols` field will be omitted from the resulting object.
  - `src_asns` (`list`): BGP Autonomous System Number associated with the source IP address. When `null`, the `src_asns` field will be omitted from the resulting object.
  - `src_ip_ranges` (`list`): Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.
  - `src_ports` (`list`): Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. &#34;80&#34;) or range (e.g. &#34;0-1023&#34;). When `null`, the `src_ports` field will be omitted from the resulting object.
  - `src_region_codes` (`list`): Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address. When `null`, the `src_region_codes` field will be omitted from the resulting object.
  - `user_defined_fields` (`list[obj]`): User-defined fields. Each element names a defined field and lists the matching values for that field. When `null`, the `user_defined_fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_region_security_policy_rule.network_match.user_defined_fields.new](#fn-network_matchuser_defined_fieldsnew) constructor.

**Returns**:
  - An attribute object that represents the `network_match` sub block.


## obj network_match.user_defined_fields



### fn network_match.user_defined_fields.new

```ts
new()
```


`google-beta.google_compute_region_security_policy_rule.network_match.user_defined_fields.new` constructs a new object with attributes and blocks configured for the `user_defined_fields`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the user-defined field, as given in the definition. When `null`, the `name` field will be omitted from the resulting object.
  - `values` (`list`): Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with &#34;0x&#34;) number (e.g. &#34;64&#34;) or range (e.g. &#34;0x400-0x7ff&#34;). When `null`, the `values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `user_defined_fields` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_compute_region_security_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
