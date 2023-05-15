---
permalink: /google_network_security_authorization_policy/
---

# google_network_security_authorization_policy

`google_network_security_authorization_policy` represents the `google-beta_google_network_security_authorization_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAction()`](#fn-withaction)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRules()`](#fn-withrules)
* [`fn withRulesMixin()`](#fn-withrulesmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj rules`](#obj-rules)
  * [`fn new()`](#fn-rulesnew)
  * [`obj rules.destinations`](#obj-rulesdestinations)
    * [`fn new()`](#fn-rulesdestinationsnew)
    * [`obj rules.destinations.http_header_match`](#obj-rulesdestinationshttp_header_match)
      * [`fn new()`](#fn-rulesdestinationshttp_header_matchnew)
  * [`obj rules.sources`](#obj-rulessources)
    * [`fn new()`](#fn-rulessourcesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_network_security_authorization_policy.new` injects a new `google-beta_google_network_security_authorization_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_network_security_authorization_policy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_network_security_authorization_policy` using the reference:

    $._ref.google-beta_google_network_security_authorization_policy.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_network_security_authorization_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `action` (`string`): The action to take when a rule match is found. Possible values are &#34;ALLOW&#34; or &#34;DENY&#34;. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the AuthorizationPolicy resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the authorization policy.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the AuthorizationPolicy resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): List of rules to match. Note that at least one of the rules must match in order for the action specified in the &#39;action&#39; field to be taken. 
A rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_network_security_authorization_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_authorization_policy`
Terraform resource.

Unlike [google-beta.google_network_security_authorization_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `action` (`string`): The action to take when a rule match is found. Possible values are &#34;ALLOW&#34; or &#34;DENY&#34;. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the AuthorizationPolicy resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the authorization policy.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the AuthorizationPolicy resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): List of rules to match. Note that at least one of the rules must match in order for the action specified in the &#39;action&#39; field to be taken. 
A rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_authorization_policy` resource into the root Terraform configuration.


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


`google-beta.google_network_security_authorization_policy.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `destinations` (`list[obj]`): List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers. 
If not set, the action specified in the &#39;action&#39; field will be applied without any rule checks for the destination. When `null`, the `destinations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.destinations.new](#fn-rulesdestinationsnew) constructor.
  - `sources` (`list[obj]`): List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ipBlocks match. 
If not set, the action specified in the &#39;action&#39; field will be applied without any rule checks for the source. When `null`, the `sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.sources.new](#fn-rulessourcesnew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj rules.destinations



### fn rules.destinations.new

```ts
new()
```


`google-beta.google_network_security_authorization_policy.rules.destinations.new` constructs a new object with attributes and blocks configured for the `destinations`
Terraform sub block.



**Args**:
  - `hosts` (`list`): List of host names to match. Matched against the &#34;:authority&#34; header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example &#34;mydomain.*&#34;) or a suffix match (example &#34;*.myorg.com&#34;) or a presence (any) match &#34;*&#34;.
  - `methods` (`list`): A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  - `ports` (`list`): List of destination ports to match. At least one port should match.
  - `http_header_match` (`list[obj]`): Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match. 
Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy. When `null`, the `http_header_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_authorization_policy.rules.destinations.http_header_match.new](#fn-rulesruleshttp_header_matchnew) constructor.

**Returns**:
  - An attribute object that represents the `destinations` sub block.


## obj rules.destinations.http_header_match



### fn rules.destinations.http_header_match.new

```ts
new()
```


`google-beta.google_network_security_authorization_policy.rules.destinations.http_header_match.new` constructs a new object with attributes and blocks configured for the `http_header_match`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the HTTP header to match. For matching against the HTTP request&#39;s authority, use a headerMatch with the header name &#34;:authority&#34;. For matching a request&#39;s method, use the headerName &#34;:method&#34;.
  - `regex_match` (`string`): The value of the header must match the regular expression specified in regexMatch. For regular expression grammar, please see: en.cppreference.com/w/cpp/regex/ecmascript For matching against a port specified in the HTTP request, use a headerMatch with headerName set to Host and a regular expression that satisfies the RFC2616 Host header&#39;s port specifier.

**Returns**:
  - An attribute object that represents the `http_header_match` sub block.


## obj rules.sources



### fn rules.sources.new

```ts
new()
```


`google-beta.google_network_security_authorization_policy.rules.sources.new` constructs a new object with attributes and blocks configured for the `sources`
Terraform sub block.



**Args**:
  - `ip_blocks` (`list`): List of CIDR ranges to match based on source IP address. At least one IP block should match. Single IP (e.g., &#34;1.2.3.4&#34;) and CIDR (e.g., &#34;1.2.3.0/24&#34;) are supported. Authorization based on source IP alone should be avoided. 
The IP addresses of any load balancers or proxies should be considered untrusted. When `null`, the `ip_blocks` field will be omitted from the resulting object.
  - `principals` (`list`): List of peer identities to match for authorization. At least one principal should match. Each peer can be an exact match, or a prefix match (example, &#34;namespace/*&#34;) or a suffix match (example, &#34;*/service-account&#34;) or a presence match &#34;*&#34;. 
Authorization based on the principal name without certificate validation (configured by ServerTlsPolicy resource) is considered insecure. When `null`, the `principals` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `sources` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_network_security_authorization_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
