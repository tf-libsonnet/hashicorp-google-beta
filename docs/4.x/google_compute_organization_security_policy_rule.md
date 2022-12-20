---
permalink: /google_compute_organization_security_policy_rule/
---

# google_compute_organization_security_policy_rule

`google_compute_organization_security_policy_rule` represents the `google-beta_google_compute_organization_security_policy_rule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAction()`](#fn-withaction)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDirection()`](#fn-withdirection)
* [`fn withEnableLogging()`](#fn-withenablelogging)
* [`fn withMatch()`](#fn-withmatch)
* [`fn withMatchMixin()`](#fn-withmatchmixin)
* [`fn withPolicyId()`](#fn-withpolicyid)
* [`fn withPreview()`](#fn-withpreview)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withTargetResources()`](#fn-withtargetresources)
* [`fn withTargetServiceAccounts()`](#fn-withtargetserviceaccounts)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj match`](#obj-match)
  * [`fn new()`](#fn-matchnew)
  * [`obj match.config`](#obj-matchconfig)
    * [`fn new()`](#fn-matchconfignew)
    * [`obj match.config.layer4_config`](#obj-matchconfiglayer4_config)
      * [`fn new()`](#fn-matchconfiglayer4_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_organization_security_policy_rule.new` injects a new `google-beta_google_compute_organization_security_policy_rule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_organization_security_policy_rule.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_organization_security_policy_rule` using the reference:

    $._ref.google-beta_google_compute_organization_security_policy_rule.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_organization_security_policy_rule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `action` (`string`): The Action to perform when the client connection triggers the rule. Can currently be either
&#34;allow&#34;, &#34;deny&#34; or &#34;goto_next&#34;.
  - `description` (`string`): A description of the rule. When `null`, the `description` field will be omitted from the resulting object.
  - `direction` (`string`): The direction in which this rule applies. If unspecified an INGRESS rule is created. Possible values: [&#34;INGRESS&#34;, &#34;EGRESS&#34;] When `null`, the `direction` field will be omitted from the resulting object.
  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule.
If logging is enabled, logs will be exported to the
configured export destination in Stackdriver. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `policy_id` (`string`): The ID of the OrganizationSecurityPolicy this rule applies to.
  - `preview` (`bool`): If set to true, the specified action is not enforced. When `null`, the `preview` field will be omitted from the resulting object.
  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a value
between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
highest priority and 2147483647 is the lowest prority.
  - `target_resources` (`list`): A list of network resource URLs to which this rule applies.
This field allows you to control which network&#39;s VMs get
this rule. If this field is left blank, all VMs
within the organization will receive the rule. When `null`, the `target_resources` field will be omitted from the resulting object.
  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of
instances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.
  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.match.new](#fn-matchnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_organization_security_policy_rule.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_organization_security_policy_rule`
Terraform resource.

Unlike [google-beta.google_compute_organization_security_policy_rule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `action` (`string`): The Action to perform when the client connection triggers the rule. Can currently be either
&#34;allow&#34;, &#34;deny&#34; or &#34;goto_next&#34;.
  - `description` (`string`): A description of the rule. When `null`, the `description` field will be omitted from the resulting object.
  - `direction` (`string`): The direction in which this rule applies. If unspecified an INGRESS rule is created. Possible values: [&#34;INGRESS&#34;, &#34;EGRESS&#34;] When `null`, the `direction` field will be omitted from the resulting object.
  - `enable_logging` (`bool`): Denotes whether to enable logging for a particular rule.
If logging is enabled, logs will be exported to the
configured export destination in Stackdriver. When `null`, the `enable_logging` field will be omitted from the resulting object.
  - `policy_id` (`string`): The ID of the OrganizationSecurityPolicy this rule applies to.
  - `preview` (`bool`): If set to true, the specified action is not enforced. When `null`, the `preview` field will be omitted from the resulting object.
  - `priority` (`number`): An integer indicating the priority of a rule in the list. The priority must be a value
between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
highest priority and 2147483647 is the lowest prority.
  - `target_resources` (`list`): A list of network resource URLs to which this rule applies.
This field allows you to control which network&#39;s VMs get
this rule. If this field is left blank, all VMs
within the organization will receive the rule. When `null`, the `target_resources` field will be omitted from the resulting object.
  - `target_service_accounts` (`list`): A list of service accounts indicating the sets of
instances that are applied with this rule. When `null`, the `target_service_accounts` field will be omitted from the resulting object.
  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding &#39;action&#39; is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.match.new](#fn-matchnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_organization_security_policy_rule` resource into the root Terraform configuration.


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


### fn withDirection

```ts
withDirection()
```

`google-beta.string.withDirection` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the direction field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `direction` field.


### fn withEnableLogging

```ts
withEnableLogging()
```

`google-beta.bool.withEnableLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_logging` field.


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


### fn withPolicyId

```ts
withPolicyId()
```

`google-beta.string.withPolicyId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the policy_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `policy_id` field.


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


### fn withTargetResources

```ts
withTargetResources()
```

`google-beta.list.withTargetResources` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the target_resources field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `target_resources` field.


### fn withTargetServiceAccounts

```ts
withTargetServiceAccounts()
```

`google-beta.list.withTargetServiceAccounts` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the target_service_accounts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `target_service_accounts` field.


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


`google-beta.google_compute_organization_security_policy_rule.match.new` constructs a new object with attributes and blocks configured for the `match`
Terraform sub block.



**Args**:
  - `description` (`string`): A description of the rule. When `null`, the `description` field will be omitted from the resulting object.
  - `versioned_expr` (`string`): Preconfigured versioned expression. For organization security policy rules,
the only supported type is &#34;FIREWALL&#34;. Default value: &#34;FIREWALL&#34; Possible values: [&#34;FIREWALL&#34;] When `null`, the `versioned_expr` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The configuration options for matching the rule. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.match.config.new](#fn-matchconfignew) constructor.

**Returns**:
  - An attribute object that represents the `match` sub block.


## obj match.config



### fn match.config.new

```ts
new()
```


`google-beta.google_compute_organization_security_policy_rule.match.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `dest_ip_ranges` (`list`): Destination IP address range in CIDR format. Required for
EGRESS rules. When `null`, the `dest_ip_ranges` field will be omitted from the resulting object.
  - `src_ip_ranges` (`list`): Source IP address range in CIDR format. Required for
INGRESS rules. When `null`, the `src_ip_ranges` field will be omitted from the resulting object.
  - `layer4_config` (`list[obj]`): Pairs of IP protocols and ports that the rule should match. When `null`, the `layer4_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_organization_security_policy_rule.match.config.layer4_config.new](#fn-matchmatchlayer4_confignew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj match.config.layer4_config



### fn match.config.layer4_config.new

```ts
new()
```


`google-beta.google_compute_organization_security_policy_rule.match.config.layer4_config.new` constructs a new object with attributes and blocks configured for the `layer4_config`
Terraform sub block.



**Args**:
  - `ip_protocol` (`string`): The IP protocol to which this rule applies. The protocol
type is required when creating a firewall rule.
This value can either be one of the following well
known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp),
or the IP protocol number.
  - `ports` (`list`): An optional list of ports to which this rule applies. This field
is only applicable for UDP or TCP protocol. Each entry must be
either an integer or a range. If not specified, this rule
applies to connections through any port.

Example inputs include: [&#34;22&#34;], [&#34;80&#34;,&#34;443&#34;], and
[&#34;12345-12349&#34;]. When `null`, the `ports` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `layer4_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_compute_organization_security_policy_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
