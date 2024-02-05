---
permalink: /google_network_services_http_route/
---

# google_network_services_http_route

`google_network_services_http_route` represents the `google-beta_google_network_services_http_route` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withGateways()`](#fn-withgateways)
* [`fn withHostnames()`](#fn-withhostnames)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMeshes()`](#fn-withmeshes)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRules()`](#fn-withrules)
* [`fn withRulesMixin()`](#fn-withrulesmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj rules`](#obj-rules)
  * [`fn new()`](#fn-rulesnew)
  * [`obj rules.action`](#obj-rulesaction)
    * [`fn new()`](#fn-rulesactionnew)
    * [`obj rules.action.cors_policy`](#obj-rulesactioncors_policy)
      * [`fn new()`](#fn-rulesactioncors_policynew)
    * [`obj rules.action.destinations`](#obj-rulesactiondestinations)
      * [`fn new()`](#fn-rulesactiondestinationsnew)
    * [`obj rules.action.fault_injection_policy`](#obj-rulesactionfault_injection_policy)
      * [`fn new()`](#fn-rulesactionfault_injection_policynew)
      * [`obj rules.action.fault_injection_policy.abort`](#obj-rulesactionfault_injection_policyabort)
        * [`fn new()`](#fn-rulesactionfault_injection_policyabortnew)
      * [`obj rules.action.fault_injection_policy.delay`](#obj-rulesactionfault_injection_policydelay)
        * [`fn new()`](#fn-rulesactionfault_injection_policydelaynew)
    * [`obj rules.action.redirect`](#obj-rulesactionredirect)
      * [`fn new()`](#fn-rulesactionredirectnew)
    * [`obj rules.action.request_header_modifier`](#obj-rulesactionrequest_header_modifier)
      * [`fn new()`](#fn-rulesactionrequest_header_modifiernew)
    * [`obj rules.action.request_mirror_policy`](#obj-rulesactionrequest_mirror_policy)
      * [`fn new()`](#fn-rulesactionrequest_mirror_policynew)
      * [`obj rules.action.request_mirror_policy.destination`](#obj-rulesactionrequest_mirror_policydestination)
        * [`fn new()`](#fn-rulesactionrequest_mirror_policydestinationnew)
    * [`obj rules.action.response_header_modifier`](#obj-rulesactionresponse_header_modifier)
      * [`fn new()`](#fn-rulesactionresponse_header_modifiernew)
    * [`obj rules.action.retry_policy`](#obj-rulesactionretry_policy)
      * [`fn new()`](#fn-rulesactionretry_policynew)
    * [`obj rules.action.url_rewrite`](#obj-rulesactionurl_rewrite)
      * [`fn new()`](#fn-rulesactionurl_rewritenew)
  * [`obj rules.matches`](#obj-rulesmatches)
    * [`fn new()`](#fn-rulesmatchesnew)
    * [`obj rules.matches.headers`](#obj-rulesmatchesheaders)
      * [`fn new()`](#fn-rulesmatchesheadersnew)
      * [`obj rules.matches.headers.range_match`](#obj-rulesmatchesheadersrange_match)
        * [`fn new()`](#fn-rulesmatchesheadersrange_matchnew)
    * [`obj rules.matches.query_parameters`](#obj-rulesmatchesquery_parameters)
      * [`fn new()`](#fn-rulesmatchesquery_parametersnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_network_services_http_route.new` injects a new `google-beta_google_network_services_http_route` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_network_services_http_route.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_network_services_http_route` using the reference:

    $._ref.google-beta_google_network_services_http_route.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_network_services_http_route.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `gateways` (`list`): Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
Each gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt; When `null`, the `gateways` field will be omitted from the resulting object.
  - `hostnames` (`list`): Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  - `labels` (`obj`): Set of label tags associated with the HttpRoute resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `meshes` (`list`): Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
Each mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;.
The attached Mesh should be of a type SIDECAR. When `null`, the `meshes` field will be omitted from the resulting object.
  - `name` (`string`): Name of the HttpRoute resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_network_services_http_route.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_http_route`
Terraform resource.

Unlike [google-beta.google_network_services_http_route.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `gateways` (`list`): Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
Each gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt; When `null`, the `gateways` field will be omitted from the resulting object.
  - `hostnames` (`list`): Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  - `labels` (`obj`): Set of label tags associated with the HttpRoute resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `meshes` (`list`): Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
Each mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;.
The attached Mesh should be of a type SIDECAR. When `null`, the `meshes` field will be omitted from the resulting object.
  - `name` (`string`): Name of the HttpRoute resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_http_route` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withGateways

```ts
withGateways()
```

`google-beta.list.withGateways` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the gateways field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `gateways` field.


### fn withHostnames

```ts
withHostnames()
```

`google-beta.list.withHostnames` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the hostnames field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `hostnames` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMeshes

```ts
withMeshes()
```

`google-beta.list.withMeshes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the meshes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `meshes` field.


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


`google-beta.google_network_services_http_route.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `action` (`list[obj]`): The detailed rule defining how to route matched traffic. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.new](#fn-rulesactionnew) constructor.
  - `matches` (`list[obj]`): A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied.
If no matches field is specified, this rule will unconditionally match traffic.
If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list. When `null`, the `matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.matches.new](#fn-rulesmatchesnew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj rules.action



### fn rules.action.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.new` constructs a new object with attributes and blocks configured for the `action`
Terraform sub block.



**Args**:
  - `timeout` (`string`): Specifies the timeout for selected route. When `null`, the `timeout` field will be omitted from the resulting object.
  - `cors_policy` (`list[obj]`): The specification for allowing client side cross-origin requests. When `null`, the `cors_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.cors_policy.new](#fn-rulesrulescors_policynew) constructor.
  - `destinations` (`list[obj]`): The destination to which traffic should be forwarded. When `null`, the `destinations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.destinations.new](#fn-rulesrulesdestinationsnew) constructor.
  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.fault_injection_policy.new](#fn-rulesrulesfault_injection_policynew) constructor.
  - `redirect` (`list[obj]`): If set, the request is directed as configured by this field. When `null`, the `redirect` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.redirect.new](#fn-rulesrulesredirectnew) constructor.
  - `request_header_modifier` (`list[obj]`): The specification for modifying the headers of a matching request prior to delivery of the request to the destination. When `null`, the `request_header_modifier` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.request_header_modifier.new](#fn-rulesrulesrequest_header_modifiernew) constructor.
  - `request_mirror_policy` (`list[obj]`): Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. When `null`, the `request_mirror_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.request_mirror_policy.new](#fn-rulesrulesrequest_mirror_policynew) constructor.
  - `response_header_modifier` (`list[obj]`): The specification for modifying the headers of a response prior to sending the response back to the client. When `null`, the `response_header_modifier` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.response_header_modifier.new](#fn-rulesrulesresponse_header_modifiernew) constructor.
  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.retry_policy.new](#fn-rulesrulesretry_policynew) constructor.
  - `url_rewrite` (`list[obj]`): The specification for rewrite URL before forwarding requests to the destination. When `null`, the `url_rewrite` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.url_rewrite.new](#fn-rulesrulesurl_rewritenew) constructor.

**Returns**:
  - An attribute object that represents the `action` sub block.


## obj rules.action.cors_policy



### fn rules.action.cors_policy.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.cors_policy.new` constructs a new object with attributes and blocks configured for the `cors_policy`
Terraform sub block.



**Args**:
  - `allow_credentials` (`bool`): In response to a preflight request, setting this to true indicates that the actual request can include user credentials. When `null`, the `allow_credentials` field will be omitted from the resulting object.
  - `allow_headers` (`list`): Specifies the content for Access-Control-Allow-Headers header. When `null`, the `allow_headers` field will be omitted from the resulting object.
  - `allow_methods` (`list`): Specifies the content for Access-Control-Allow-Methods header. When `null`, the `allow_methods` field will be omitted from the resulting object.
  - `allow_origin_regexes` (`list`): Specifies the regular expression patterns that match allowed origins. When `null`, the `allow_origin_regexes` field will be omitted from the resulting object.
  - `allow_origins` (`list`): Specifies the list of origins that will be allowed to do CORS requests. When `null`, the `allow_origins` field will be omitted from the resulting object.
  - `disabled` (`bool`): If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect. When `null`, the `disabled` field will be omitted from the resulting object.
  - `expose_headers` (`list`): Specifies the content for Access-Control-Expose-Headers header. When `null`, the `expose_headers` field will be omitted from the resulting object.
  - `max_age` (`string`): Specifies how long result of a preflight request can be cached in seconds. When `null`, the `max_age` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cors_policy` sub block.


## obj rules.action.destinations



### fn rules.action.destinations.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.destinations.new` constructs a new object with attributes and blocks configured for the `destinations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The URL of a BackendService to route traffic to. When `null`, the `service_name` field will be omitted from the resulting object.
  - `weight` (`number`): Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports.
If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend.
If weights are specified for any one service name, they need to be specified for all of them.
If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them. When `null`, the `weight` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `destinations` sub block.


## obj rules.action.fault_injection_policy



### fn rules.action.fault_injection_policy.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`
Terraform sub block.



**Args**:
  - `abort` (`list[obj]`): Specification of how client requests are aborted as part of fault injection before being sent to a destination. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.fault_injection_policy.abort.new](#fn-rulesrulesactionabortnew) constructor.
  - `delay` (`list[obj]`): Specification of how client requests are delayed as part of fault injection before being sent to a destination. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.fault_injection_policy.delay.new](#fn-rulesrulesactiondelaynew) constructor.

**Returns**:
  - An attribute object that represents the `fault_injection_policy` sub block.


## obj rules.action.fault_injection_policy.abort



### fn rules.action.fault_injection_policy.abort.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`
Terraform sub block.



**Args**:
  - `http_status` (`number`): The HTTP status code used to abort the request. When `null`, the `http_status` field will be omitted from the resulting object.
  - `percentage` (`number`): The percentage of traffic which will be aborted. When `null`, the `percentage` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `abort` sub block.


## obj rules.action.fault_injection_policy.delay



### fn rules.action.fault_injection_policy.delay.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`
Terraform sub block.



**Args**:
  - `fixed_delay` (`string`): Specify a fixed delay before forwarding the request. When `null`, the `fixed_delay` field will be omitted from the resulting object.
  - `percentage` (`number`): The percentage of traffic on which delay will be injected. When `null`, the `percentage` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `delay` sub block.


## obj rules.action.redirect



### fn rules.action.redirect.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.redirect.new` constructs a new object with attributes and blocks configured for the `redirect`
Terraform sub block.



**Args**:
  - `host_redirect` (`string`): The host that will be used in the redirect response instead of the one that was supplied in the request. When `null`, the `host_redirect` field will be omitted from the resulting object.
  - `https_redirect` (`bool`): If set to true, the URL scheme in the redirected request is set to https. When `null`, the `https_redirect` field will be omitted from the resulting object.
  - `path_redirect` (`string`): The path that will be used in the redirect response instead of the one that was supplied in the request. pathRedirect can not be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect. When `null`, the `path_redirect` field will be omitted from the resulting object.
  - `port_redirect` (`number`): The port that will be used in the redirected request instead of the one that was supplied in the request. When `null`, the `port_redirect` field will be omitted from the resulting object.
  - `prefix_rewrite` (`string`): Indicates that during redirection, the matched prefix (or path) should be swapped with this value. When `null`, the `prefix_rewrite` field will be omitted from the resulting object.
  - `response_code` (`string`): The HTTP Status code to use for the redirect. When `null`, the `response_code` field will be omitted from the resulting object.
  - `strip_query` (`bool`): If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. When `null`, the `strip_query` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `redirect` sub block.


## obj rules.action.request_header_modifier



### fn rules.action.request_header_modifier.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.request_header_modifier.new` constructs a new object with attributes and blocks configured for the `request_header_modifier`
Terraform sub block.



**Args**:
  - `add` (`obj`): Add the headers with given map where key is the name of the header, value is the value of the header. When `null`, the `add` field will be omitted from the resulting object.
  - `remove` (`list`): Remove headers (matching by header names) specified in the list. When `null`, the `remove` field will be omitted from the resulting object.
  - `set` (`obj`): Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header. When `null`, the `set` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `request_header_modifier` sub block.


## obj rules.action.request_mirror_policy



### fn rules.action.request_mirror_policy.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.request_mirror_policy.new` constructs a new object with attributes and blocks configured for the `request_mirror_policy`
Terraform sub block.



**Args**:
  - `destination` (`list[obj]`): The destination the requests will be mirrored to. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.action.request_mirror_policy.destination.new](#fn-rulesrulesactiondestinationnew) constructor.

**Returns**:
  - An attribute object that represents the `request_mirror_policy` sub block.


## obj rules.action.request_mirror_policy.destination



### fn rules.action.request_mirror_policy.destination.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.request_mirror_policy.destination.new` constructs a new object with attributes and blocks configured for the `destination`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The URL of a BackendService to route traffic to. When `null`, the `service_name` field will be omitted from the resulting object.
  - `weight` (`number`): Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports.
If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend.
If weights are specified for any one service name, they need to be specified for all of them.
If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them. When `null`, the `weight` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `destination` sub block.


## obj rules.action.response_header_modifier



### fn rules.action.response_header_modifier.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.response_header_modifier.new` constructs a new object with attributes and blocks configured for the `response_header_modifier`
Terraform sub block.



**Args**:
  - `add` (`obj`): Add the headers with given map where key is the name of the header, value is the value of the header. When `null`, the `add` field will be omitted from the resulting object.
  - `remove` (`list`): Remove headers (matching by header names) specified in the list. When `null`, the `remove` field will be omitted from the resulting object.
  - `set` (`obj`): Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header. When `null`, the `set` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `response_header_modifier` sub block.


## obj rules.action.retry_policy



### fn rules.action.retry_policy.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`
Terraform sub block.



**Args**:
  - `num_retries` (`number`): Specifies the allowed number of retries. When `null`, the `num_retries` field will be omitted from the resulting object.
  - `per_try_timeout` (`string`): Specifies a non-zero timeout per retry attempt. A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `per_try_timeout` field will be omitted from the resulting object.
  - `retry_conditions` (`list`): Specifies one or more conditions when this retry policy applies. When `null`, the `retry_conditions` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `retry_policy` sub block.


## obj rules.action.url_rewrite



### fn rules.action.url_rewrite.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.action.url_rewrite.new` constructs a new object with attributes and blocks configured for the `url_rewrite`
Terraform sub block.



**Args**:
  - `host_rewrite` (`string`): Prior to forwarding the request to the selected destination, the requests host header is replaced by this value. When `null`, the `host_rewrite` field will be omitted from the resulting object.
  - `path_prefix_rewrite` (`string`): Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value. When `null`, the `path_prefix_rewrite` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `url_rewrite` sub block.


## obj rules.matches



### fn rules.matches.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.matches.new` constructs a new object with attributes and blocks configured for the `matches`
Terraform sub block.



**Args**:
  - `full_path_match` (`string`): The HTTP request path value should exactly match this value. When `null`, the `full_path_match` field will be omitted from the resulting object.
  - `ignore_case` (`bool`): Specifies if prefixMatch and fullPathMatch matches are case sensitive. The default value is false. When `null`, the `ignore_case` field will be omitted from the resulting object.
  - `prefix_match` (`string`): The HTTP request path value must begin with specified prefixMatch. prefixMatch must begin with a /. When `null`, the `prefix_match` field will be omitted from the resulting object.
  - `regex_match` (`string`): The HTTP request path value must satisfy the regular expression specified by regexMatch after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax When `null`, the `regex_match` field will be omitted from the resulting object.
  - `headers` (`list[obj]`): Specifies a list of HTTP request headers to match against. When `null`, the `headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.matches.headers.new](#fn-rulesrulesheadersnew) constructor.
  - `query_parameters` (`list[obj]`): Specifies a list of query parameters to match against. When `null`, the `query_parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.matches.query_parameters.new](#fn-rulesrulesquery_parametersnew) constructor.

**Returns**:
  - An attribute object that represents the `matches` sub block.


## obj rules.matches.headers



### fn rules.matches.headers.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.matches.headers.new` constructs a new object with attributes and blocks configured for the `headers`
Terraform sub block.



**Args**:
  - `exact_match` (`string`): The value of the header should match exactly the content of exactMatch. When `null`, the `exact_match` field will be omitted from the resulting object.
  - `header` (`string`): The name of the HTTP header to match against. When `null`, the `header` field will be omitted from the resulting object.
  - `invert_match` (`bool`): If specified, the match result will be inverted before checking. Default value is set to false. When `null`, the `invert_match` field will be omitted from the resulting object.
  - `prefix_match` (`string`): The value of the header must start with the contents of prefixMatch. When `null`, the `prefix_match` field will be omitted from the resulting object.
  - `present_match` (`bool`): A header with headerName must exist. The match takes place whether or not the header has a value. When `null`, the `present_match` field will be omitted from the resulting object.
  - `regex_match` (`string`): The value of the header must match the regular expression specified in regexMatch. When `null`, the `regex_match` field will be omitted from the resulting object.
  - `suffix_match` (`string`): The value of the header must end with the contents of suffixMatch. When `null`, the `suffix_match` field will be omitted from the resulting object.
  - `range_match` (`list[obj]`): If specified, the rule will match if the request header value is within the range. When `null`, the `range_match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_http_route.rules.matches.headers.range_match.new](#fn-rulesrulesmatchesrange_matchnew) constructor.

**Returns**:
  - An attribute object that represents the `headers` sub block.


## obj rules.matches.headers.range_match



### fn rules.matches.headers.range_match.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.matches.headers.range_match.new` constructs a new object with attributes and blocks configured for the `range_match`
Terraform sub block.



**Args**:
  - `end` (`number`): End of the range (exclusive).
  - `start` (`number`): Start of the range (inclusive).

**Returns**:
  - An attribute object that represents the `range_match` sub block.


## obj rules.matches.query_parameters



### fn rules.matches.query_parameters.new

```ts
new()
```


`google-beta.google_network_services_http_route.rules.matches.query_parameters.new` constructs a new object with attributes and blocks configured for the `query_parameters`
Terraform sub block.



**Args**:
  - `exact_match` (`string`): The value of the query parameter must exactly match the contents of exactMatch. When `null`, the `exact_match` field will be omitted from the resulting object.
  - `present_match` (`bool`): Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. When `null`, the `present_match` field will be omitted from the resulting object.
  - `query_parameter` (`string`): The name of the query parameter to match. When `null`, the `query_parameter` field will be omitted from the resulting object.
  - `regex_match` (`string`): The value of the query parameter must match the regular expression specified by regexMatch.For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax When `null`, the `regex_match` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `query_parameters` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_network_services_http_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
