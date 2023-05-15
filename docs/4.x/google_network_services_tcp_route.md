---
permalink: /google_network_services_tcp_route/
---

# google_network_services_tcp_route

`google_network_services_tcp_route` represents the `google-beta_google_network_services_tcp_route` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withGateways()`](#fn-withgateways)
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
  * [`obj rules.matches`](#obj-rulesmatches)
    * [`fn new()`](#fn-rulesmatchesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_network_services_tcp_route.new` injects a new `google-beta_google_network_services_tcp_route` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_network_services_tcp_route.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_network_services_tcp_route` using the reference:

    $._ref.google-beta_google_network_services_tcp_route.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_network_services_tcp_route.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `gateways` (`list`): Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
Each gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt; When `null`, the `gateways` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the TcpRoute resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `meshes` (`list`): Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
Each mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;
The attached Mesh should be of a type SIDECAR When `null`, the `meshes` field will be omitted from the resulting object.
  - `name` (`string`): Name of the TcpRoute resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. At least one RouteRule must be supplied.
If there are multiple rules then the action taken will be the first rule to match. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tcp_route.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tcp_route.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_network_services_tcp_route.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_tcp_route`
Terraform resource.

Unlike [google-beta.google_network_services_tcp_route.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `gateways` (`list`): Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
Each gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt; When `null`, the `gateways` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the TcpRoute resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `meshes` (`list`): Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
Each mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;
The attached Mesh should be of a type SIDECAR When `null`, the `meshes` field will be omitted from the resulting object.
  - `name` (`string`): Name of the TcpRoute resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `rules` (`list[obj]`): Rules that define how traffic is routed and handled. At least one RouteRule must be supplied.
If there are multiple rules then the action taken will be the first rule to match. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tcp_route.rules.new](#fn-rulesnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tcp_route.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_tcp_route` resource into the root Terraform configuration.


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


`google-beta.google_network_services_tcp_route.rules.new` constructs a new object with attributes and blocks configured for the `rules`
Terraform sub block.



**Args**:
  - `action` (`list[obj]`): A detailed rule defining how to route traffic. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tcp_route.rules.action.new](#fn-rulesactionnew) constructor.
  - `matches` (`list[obj]`): RouteMatch defines the predicate used to match requests to a given action. Multiple match types are &#34;OR&#34;ed for evaluation.
If no routeMatch field is specified, this rule will unconditionally match traffic. When `null`, the `matches` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tcp_route.rules.matches.new](#fn-rulesmatchesnew) constructor.

**Returns**:
  - An attribute object that represents the `rules` sub block.


## obj rules.action



### fn rules.action.new

```ts
new()
```


`google-beta.google_network_services_tcp_route.rules.action.new` constructs a new object with attributes and blocks configured for the `action`
Terraform sub block.



**Args**:
  - `original_destination` (`bool`): If true, Router will use the destination IP and port of the original connection as the destination of the request. When `null`, the `original_destination` field will be omitted from the resulting object.
  - `destinations` (`list[obj]`): The destination services to which traffic should be forwarded. At least one destination service is required. When `null`, the `destinations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_tcp_route.rules.action.destinations.new](#fn-rulesrulesdestinationsnew) constructor.

**Returns**:
  - An attribute object that represents the `action` sub block.


## obj rules.action.destinations



### fn rules.action.destinations.new

```ts
new()
```


`google-beta.google_network_services_tcp_route.rules.action.destinations.new` constructs a new object with attributes and blocks configured for the `destinations`
Terraform sub block.



**Args**:
  - `service_name` (`string`): The URL of a BackendService to route traffic to. When `null`, the `service_name` field will be omitted from the resulting object.
  - `weight` (`number`): Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports.
If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend.
If weights are specified for any one service name, they need to be specified for all of them.
If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them. When `null`, the `weight` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `destinations` sub block.


## obj rules.matches



### fn rules.matches.new

```ts
new()
```


`google-beta.google_network_services_tcp_route.rules.matches.new` constructs a new object with attributes and blocks configured for the `matches`
Terraform sub block.



**Args**:
  - `address` (`string`): Must be specified in the CIDR range format. A CIDR range consists of an IP Address and a prefix length to construct the subnet mask.
By default, the prefix length is 32 (i.e. matches a single IP address). Only IPV4 addresses are supported. Examples: &#34;10.0.0.1&#34; - matches against this exact IP address. &#34;10.0.0.0/8&#34; - matches against any IP address within the 10.0.0.0 subnet and 255.255.255.0 mask. &#34;0.0.0.0/0&#34; - matches against any IP address&#39;.
  - `port` (`string`): Specifies the destination port to match against.

**Returns**:
  - An attribute object that represents the `matches` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_network_services_tcp_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
