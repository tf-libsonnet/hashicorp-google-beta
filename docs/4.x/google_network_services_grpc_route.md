---
permalink: /google_network_services_grpc_route/
---

# google_network_services_grpc_route

`google_network_services_grpc_route` represents the `google-beta_google_network_services_grpc_route` Terraform resource.



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
    * [`obj rules.action.destinations`](#obj-rulesactiondestinations)
      * [`fn new()`](#fn-rulesactiondestinationsnew)
    * [`obj rules.action.fault_injection_policy`](#obj-rulesactionfault_injection_policy)
      * [`fn new()`](#fn-rulesactionfault_injection_policynew)
      * [`obj rules.action.fault_injection_policy.abort`](#obj-rulesactionfault_injection_policyabort)
        * [`fn new()`](#fn-rulesactionfault_injection_policyabortnew)
      * [`obj rules.action.fault_injection_policy.delay`](#obj-rulesactionfault_injection_policydelay)
        * [`fn new()`](#fn-rulesactionfault_injection_policydelaynew)
    * [`obj rules.action.retry_policy`](#obj-rulesactionretry_policy)
      * [`fn new()`](#fn-rulesactionretry_policynew)
  * [`obj rules.matches`](#obj-rulesmatches)
    * [`fn new()`](#fn-rulesmatchesnew)
    * [`obj rules.matches.headers`](#obj-rulesmatchesheaders)
      * [`fn new()`](#fn-rulesmatchesheadersnew)
    * [`obj rules.matches.method`](#obj-rulesmatchesmethod)
      * [`fn new()`](#fn-rulesmatchesmethodnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_network_services_grpc_route.new` injects a new `google-beta_google_network_services_grpc_route` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_network_services_grpc_route.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_network_services_grpc_route` using the reference:

    $._ref.google-beta_google_network_services_grpc_route.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_network_services_grpc_route.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `gateways` (`list`): List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. When `null`, the `gateways` field will be omitted from the resulting object.
  - `hostnames` (`list`): Required. Service hostnames with an optional port for which this route describes traffic.
  - `labels` (`obj`): Set of label tags associated with the GrpcRoute resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `meshes` (`list`): List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. When `null`, the `meshes` field will be omitted from the resulting object.
  - `name` (`string`): Name of the GrpcRoute resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_network_services_grpc_route.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_grpc_route`
Terraform resource.

Unlike [google-beta.google_network_services_grpc_route.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `gateways` (`list`): List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. When `null`, the `gateways` field will be omitted from the resulting object.
  - `hostnames` (`list`): Required. Service hostnames with an optional port for which this route describes traffic.
  - `labels` (`obj`): Set of label tags associated with the GrpcRoute resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `meshes` (`list`): List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. When `null`, the `meshes` field will be omitted from the resulting object.
  - `name` (`string`): Name of the GrpcRoute resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_grpc_route` resource into the root Terraform configuration.


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


`google-beta.google_network_services_grpc_route.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `action` (`list[obj]`): Required. A detailed rule defining how to route traffic. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.new](#fn-rulesactionnew) constructor.
  - `matches` (`list[obj]`): Matches define conditions used for matching the rule against incoming gRPC requests. When `null`, the `matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.matches.new](#fn-rulesmatchesnew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj rules.action



### fn rules.action.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.rules.action.new` constructs a new object with attributes and blocks configured for the `action`
Terraform sub block.



**Args**:
  - `timeout` (`string`): Specifies the timeout for selected route. When `null`, the `timeout` field will be omitted from the resulting object.
  - `destinations` (`list[obj]`): The destination to which traffic should be forwarded. When `null`, the `destinations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.destinations.new](#fn-rulesrulesdestinationsnew) constructor.
  - `fault_injection_policy` (`list[obj]`): The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. When `null`, the `fault_injection_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.new](#fn-rulesrulesfault_injection_policynew) constructor.
  - `retry_policy` (`list[obj]`): Specifies the retry policy associated with this route. When `null`, the `retry_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.retry_policy.new](#fn-rulesrulesretry_policynew) constructor.

**Returns**:
  - An attribute object that represents the `action` sub block.


## obj rules.action.destinations



### fn rules.action.destinations.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.rules.action.destinations.new` constructs a new object with attributes and blocks configured for the `destinations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The URL of a BackendService to route traffic to. When `null`, the `service_name` field will be omitted from the resulting object.
  - `weight` (`number`): Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. When `null`, the `weight` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `destinations` sub block.


## obj rules.action.fault_injection_policy



### fn rules.action.fault_injection_policy.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.new` constructs a new object with attributes and blocks configured for the `fault_injection_policy`
Terraform sub block.



**Args**:
  - `abort` (`list[obj]`): Specification of how client requests are aborted as part of fault injection before being sent to a destination. When `null`, the `abort` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.abort.new](#fn-rulesrulesactionabortnew) constructor.
  - `delay` (`list[obj]`): Specification of how client requests are delayed as part of fault injection before being sent to a destination. When `null`, the `delay` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.delay.new](#fn-rulesrulesactiondelaynew) constructor.

**Returns**:
  - An attribute object that represents the `fault_injection_policy` sub block.


## obj rules.action.fault_injection_policy.abort



### fn rules.action.fault_injection_policy.abort.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.abort.new` constructs a new object with attributes and blocks configured for the `abort`
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


`google-beta.google_network_services_grpc_route.rules.action.fault_injection_policy.delay.new` constructs a new object with attributes and blocks configured for the `delay`
Terraform sub block.



**Args**:
  - `fixed_delay` (`string`): Specify a fixed delay before forwarding the request. When `null`, the `fixed_delay` field will be omitted from the resulting object.
  - `percentage` (`number`): The percentage of traffic on which delay will be injected. When `null`, the `percentage` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `delay` sub block.


## obj rules.action.retry_policy



### fn rules.action.retry_policy.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.rules.action.retry_policy.new` constructs a new object with attributes and blocks configured for the `retry_policy`
Terraform sub block.



**Args**:
  - `num_retries` (`number`): Specifies the allowed number of retries. When `null`, the `num_retries` field will be omitted from the resulting object.
  - `retry_conditions` (`list`): Specifies one or more conditions when this retry policy applies. Possible values: [&#34;connect-failure&#34;, &#34;refused-stream&#34;, &#34;cancelled&#34;, &#34;deadline-exceeded&#34;, &#34;resource-exhausted&#34;, &#34;unavailable&#34;] When `null`, the `retry_conditions` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `retry_policy` sub block.


## obj rules.matches



### fn rules.matches.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.rules.matches.new` constructs a new object with attributes and blocks configured for the `matches`
Terraform sub block.



**Args**:
  - `headers` (`list[obj]`): Specifies a list of HTTP request headers to match against. When `null`, the `headers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.matches.headers.new](#fn-rulesrulesheadersnew) constructor.
  - `method` (`list[obj]`): A gRPC method to match against. If this field is empty or omitted, will match all methods. When `null`, the `method` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_grpc_route.rules.matches.method.new](#fn-rulesrulesmethodnew) constructor.

**Returns**:
  - An attribute object that represents the `matches` sub block.


## obj rules.matches.headers



### fn rules.matches.headers.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.rules.matches.headers.new` constructs a new object with attributes and blocks configured for the `headers`
Terraform sub block.



**Args**:
  - `key` (`string`): Required. The key of the header.
  - `type` (`string`): The type of match. Default value: &#34;EXACT&#34; Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;EXACT&#34;, &#34;REGULAR_EXPRESSION&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `value` (`string`): Required. The value of the header.

**Returns**:
  - An attribute object that represents the `headers` sub block.


## obj rules.matches.method



### fn rules.matches.method.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.rules.matches.method.new` constructs a new object with attributes and blocks configured for the `method`
Terraform sub block.



**Args**:
  - `case_sensitive` (`bool`): Specifies that matches are case sensitive. The default value is true. When `null`, the `case_sensitive` field will be omitted from the resulting object.
  - `grpc_method` (`string`): Required. Name of the method to match against.
  - `grpc_service` (`string`): Required. Name of the service to match against.

**Returns**:
  - An attribute object that represents the `method` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_network_services_grpc_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
