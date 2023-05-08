---
permalink: /google_network_services_endpoint_policy/
---

# google_network_services_endpoint_policy

`google_network_services_endpoint_policy` represents the `google-beta_google_network_services_endpoint_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthorizationPolicy()`](#fn-withauthorizationpolicy)
* [`fn withClientTlsPolicy()`](#fn-withclienttlspolicy)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEndpointMatcher()`](#fn-withendpointmatcher)
* [`fn withEndpointMatcherMixin()`](#fn-withendpointmatchermixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withServerTlsPolicy()`](#fn-withservertlspolicy)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTrafficPortSelector()`](#fn-withtrafficportselector)
* [`fn withTrafficPortSelectorMixin()`](#fn-withtrafficportselectormixin)
* [`fn withType()`](#fn-withtype)
* [`obj endpoint_matcher`](#obj-endpoint_matcher)
  * [`fn new()`](#fn-endpoint_matchernew)
  * [`obj endpoint_matcher.metadata_label_matcher`](#obj-endpoint_matchermetadata_label_matcher)
    * [`fn new()`](#fn-endpoint_matchermetadata_label_matchernew)
    * [`obj endpoint_matcher.metadata_label_matcher.metadata_labels`](#obj-endpoint_matchermetadata_label_matchermetadata_labels)
      * [`fn new()`](#fn-endpoint_matchermetadata_label_matchermetadata_labelsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj traffic_port_selector`](#obj-traffic_port_selector)
  * [`fn new()`](#fn-traffic_port_selectornew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_network_services_endpoint_policy.new` injects a new `google-beta_google_network_services_endpoint_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_network_services_endpoint_policy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_network_services_endpoint_policy` using the reference:

    $._ref.google-beta_google_network_services_endpoint_policy.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_network_services_endpoint_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `authorization_policy` (`string`): This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. When `null`, the `authorization_policy` field will be omitted from the resulting object.
  - `client_tls_policy` (`string`): A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. When `null`, the `client_tls_policy` field will be omitted from the resulting object.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the TcpRoute resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the EndpointPolicy resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `server_tls_policy` (`string`): A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. When `null`, the `server_tls_policy` field will be omitted from the resulting object.
  - `type` (`string`): The type of endpoint policy. This is primarily used to validate the configuration. Possible values: [&#34;SIDECAR_PROXY&#34;, &#34;GRPC_SERVER&#34;]
  - `endpoint_matcher` (`list[obj]`): Required. A matcher that selects endpoints to which the policies should be applied. When `null`, the `endpoint_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.endpoint_matcher.new](#fn-endpoint_matchernew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.timeouts.new](#fn-timeoutsnew) constructor.
  - `traffic_port_selector` (`list[obj]`): Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports. When `null`, the `traffic_port_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.traffic_port_selector.new](#fn-traffic_port_selectornew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_network_services_endpoint_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_services_endpoint_policy`
Terraform resource.

Unlike [google-beta.google_network_services_endpoint_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `authorization_policy` (`string`): This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. When `null`, the `authorization_policy` field will be omitted from the resulting object.
  - `client_tls_policy` (`string`): A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. When `null`, the `client_tls_policy` field will be omitted from the resulting object.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the TcpRoute resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the EndpointPolicy resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `server_tls_policy` (`string`): A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. When `null`, the `server_tls_policy` field will be omitted from the resulting object.
  - `type` (`string`): The type of endpoint policy. This is primarily used to validate the configuration. Possible values: [&#34;SIDECAR_PROXY&#34;, &#34;GRPC_SERVER&#34;]
  - `endpoint_matcher` (`list[obj]`): Required. A matcher that selects endpoints to which the policies should be applied. When `null`, the `endpoint_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.endpoint_matcher.new](#fn-endpoint_matchernew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.timeouts.new](#fn-timeoutsnew) constructor.
  - `traffic_port_selector` (`list[obj]`): Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports. When `null`, the `traffic_port_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.traffic_port_selector.new](#fn-traffic_port_selectornew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_services_endpoint_policy` resource into the root Terraform configuration.


### fn withAuthorizationPolicy

```ts
withAuthorizationPolicy()
```

`google-beta.string.withAuthorizationPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the authorization_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `authorization_policy` field.


### fn withClientTlsPolicy

```ts
withClientTlsPolicy()
```

`google-beta.string.withClientTlsPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the client_tls_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `client_tls_policy` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEndpointMatcher

```ts
withEndpointMatcher()
```

`google-beta.list[obj].withEndpointMatcher` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the endpoint_matcher field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withEndpointMatcherMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `endpoint_matcher` field.


### fn withEndpointMatcherMixin

```ts
withEndpointMatcherMixin()
```

`google-beta.list[obj].withEndpointMatcherMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the endpoint_matcher field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withEndpointMatcher](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `endpoint_matcher` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withServerTlsPolicy

```ts
withServerTlsPolicy()
```

`google-beta.string.withServerTlsPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the server_tls_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `server_tls_policy` field.


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


### fn withTrafficPortSelector

```ts
withTrafficPortSelector()
```

`google-beta.list[obj].withTrafficPortSelector` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the traffic_port_selector field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withTrafficPortSelectorMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `traffic_port_selector` field.


### fn withTrafficPortSelectorMixin

```ts
withTrafficPortSelectorMixin()
```

`google-beta.list[obj].withTrafficPortSelectorMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the traffic_port_selector field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withTrafficPortSelector](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `traffic_port_selector` field.


### fn withType

```ts
withType()
```

`google-beta.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj endpoint_matcher



### fn endpoint_matcher.new

```ts
new()
```


`google-beta.google_network_services_endpoint_policy.endpoint_matcher.new` constructs a new object with attributes and blocks configured for the `endpoint_matcher`
Terraform sub block.



**Args**:
  - `metadata_label_matcher` (`list[obj]`): The matcher is based on node metadata presented by xDS clients. When `null`, the `metadata_label_matcher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.endpoint_matcher.metadata_label_matcher.new](#fn-endpoint_matchermetadata_label_matchernew) constructor.

**Returns**:
  - An attribute object that represents the `endpoint_matcher` sub block.


## obj endpoint_matcher.metadata_label_matcher



### fn endpoint_matcher.metadata_label_matcher.new

```ts
new()
```


`google-beta.google_network_services_endpoint_policy.endpoint_matcher.metadata_label_matcher.new` constructs a new object with attributes and blocks configured for the `metadata_label_matcher`
Terraform sub block.



**Args**:
  - `metadata_label_match_criteria` (`string`): Specifies how matching should be done. Possible values: [&#34;MATCH_ANY&#34;, &#34;MATCH_ALL&#34;]
  - `metadata_labels` (`list[obj]`): The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria When `null`, the `metadata_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_services_endpoint_policy.endpoint_matcher.metadata_label_matcher.metadata_labels.new](#fn-endpoint_matcherendpoint_matchermetadata_labelsnew) constructor.

**Returns**:
  - An attribute object that represents the `metadata_label_matcher` sub block.


## obj endpoint_matcher.metadata_label_matcher.metadata_labels



### fn endpoint_matcher.metadata_label_matcher.metadata_labels.new

```ts
new()
```


`google-beta.google_network_services_endpoint_policy.endpoint_matcher.metadata_label_matcher.metadata_labels.new` constructs a new object with attributes and blocks configured for the `metadata_labels`
Terraform sub block.



**Args**:
  - `label_name` (`string`): Required. Label name presented as key in xDS Node Metadata.
  - `label_value` (`string`): Required. Label value presented as value corresponding to the above key, in xDS Node Metadata.

**Returns**:
  - An attribute object that represents the `metadata_labels` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_network_services_endpoint_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj traffic_port_selector



### fn traffic_port_selector.new

```ts
new()
```


`google-beta.google_network_services_endpoint_policy.traffic_port_selector.new` constructs a new object with attributes and blocks configured for the `traffic_port_selector`
Terraform sub block.



**Args**:
  - `ports` (`list`): List of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.

**Returns**:
  - An attribute object that represents the `traffic_port_selector` sub block.
