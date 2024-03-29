---
permalink: /google_compute_target_https_proxy/
---

# google_compute_target_https_proxy

`google_compute_target_https_proxy` represents the `google-beta_google_compute_target_https_proxy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertificateMap()`](#fn-withcertificatemap)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withHttpKeepAliveTimeoutSec()`](#fn-withhttpkeepalivetimeoutsec)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withProxyBind()`](#fn-withproxybind)
* [`fn withQuicOverride()`](#fn-withquicoverride)
* [`fn withServerTlsPolicy()`](#fn-withservertlspolicy)
* [`fn withSslCertificates()`](#fn-withsslcertificates)
* [`fn withSslPolicy()`](#fn-withsslpolicy)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUrlMap()`](#fn-withurlmap)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_compute_target_https_proxy.new` injects a new `google-beta_google_compute_target_https_proxy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_compute_target_https_proxy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_compute_target_https_proxy` using the reference:

    $._ref.google-beta_google_compute_target_https_proxy.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_compute_target_https_proxy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `certificate_map` (`string`): A reference to the CertificateMap resource uri that identifies a certificate map
associated with the given target proxy. This field can only be set for global target proxies.
Accepted format is &#39;//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}&#39;. When `null`, the `certificate_map` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `http_keep_alive_timeout_sec` (`number`): Specifies how long to keep a connection open, after completing a response,
while there is no matching traffic (in seconds). If an HTTP keepalive is
not specified, a default value (610 seconds) will be used. For Global
external HTTP(S) load balancer, the minimum allowed value is 5 seconds and
the maximum allowed value is 1200 seconds. For Global external HTTP(S)
load balancer (classic), this option is not available publicly. When `null`, the `http_keep_alive_timeout_sec` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `proxy_bind` (`bool`): This field only applies when the forwarding rule that references
this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `proxy_bind` field will be omitted from the resulting object.
  - `quic_override` (`string`): Specifies the QUIC override policy for this resource. This determines
whether the load balancer will attempt to negotiate QUIC with clients
or not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is
specified, Google manages whether QUIC is used. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ENABLE&#34;, &#34;DISABLE&#34;] When `null`, the `quic_override` field will be omitted from the resulting object.
  - `server_tls_policy` (`string`): A URL referring to a networksecurity.ServerTlsPolicy
resource that describes how the proxy should authenticate inbound
traffic. serverTlsPolicy only applies to a global TargetHttpsProxy
attached to globalForwardingRules with the loadBalancingScheme
set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED.
For details which ServerTlsPolicy resources are accepted with
INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED
loadBalancingScheme consult ServerTlsPolicy documentation.
If left blank, communications are not encrypted. When `null`, the `server_tls_policy` field will be omitted from the resulting object.
  - `ssl_certificates` (`list`): A list of SslCertificate resource URLs or Certificate Manager certificate URLs that are used to authenticate
connections between users and the load balancer. At least one resource must be specified. When `null`, the `ssl_certificates` field will be omitted from the resulting object.
  - `ssl_policy` (`string`): A reference to the SslPolicy resource that will be associated with
the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
resource will not have any SSL policy configured. When `null`, the `ssl_policy` field will be omitted from the resulting object.
  - `url_map` (`string`): A reference to the UrlMap resource that defines the mapping from URL
to the BackendService.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_target_https_proxy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_compute_target_https_proxy.newAttrs` constructs a new object with attributes and blocks configured for the `google_compute_target_https_proxy`
Terraform resource.

Unlike [google-beta.google_compute_target_https_proxy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `certificate_map` (`string`): A reference to the CertificateMap resource uri that identifies a certificate map
associated with the given target proxy. This field can only be set for global target proxies.
Accepted format is &#39;//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}&#39;. When `null`, the `certificate_map` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `http_keep_alive_timeout_sec` (`number`): Specifies how long to keep a connection open, after completing a response,
while there is no matching traffic (in seconds). If an HTTP keepalive is
not specified, a default value (610 seconds) will be used. For Global
external HTTP(S) load balancer, the minimum allowed value is 5 seconds and
the maximum allowed value is 1200 seconds. For Global external HTTP(S)
load balancer (classic), this option is not available publicly. When `null`, the `http_keep_alive_timeout_sec` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `proxy_bind` (`bool`): This field only applies when the forwarding rule that references
this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When `null`, the `proxy_bind` field will be omitted from the resulting object.
  - `quic_override` (`string`): Specifies the QUIC override policy for this resource. This determines
whether the load balancer will attempt to negotiate QUIC with clients
or not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is
specified, Google manages whether QUIC is used. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ENABLE&#34;, &#34;DISABLE&#34;] When `null`, the `quic_override` field will be omitted from the resulting object.
  - `server_tls_policy` (`string`): A URL referring to a networksecurity.ServerTlsPolicy
resource that describes how the proxy should authenticate inbound
traffic. serverTlsPolicy only applies to a global TargetHttpsProxy
attached to globalForwardingRules with the loadBalancingScheme
set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED.
For details which ServerTlsPolicy resources are accepted with
INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED
loadBalancingScheme consult ServerTlsPolicy documentation.
If left blank, communications are not encrypted. When `null`, the `server_tls_policy` field will be omitted from the resulting object.
  - `ssl_certificates` (`list`): A list of SslCertificate resource URLs or Certificate Manager certificate URLs that are used to authenticate
connections between users and the load balancer. At least one resource must be specified. When `null`, the `ssl_certificates` field will be omitted from the resulting object.
  - `ssl_policy` (`string`): A reference to the SslPolicy resource that will be associated with
the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
resource will not have any SSL policy configured. When `null`, the `ssl_policy` field will be omitted from the resulting object.
  - `url_map` (`string`): A reference to the UrlMap resource that defines the mapping from URL
to the BackendService.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_compute_target_https_proxy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_compute_target_https_proxy` resource into the root Terraform configuration.


### fn withCertificateMap

```ts
withCertificateMap()
```

`google-beta.string.withCertificateMap` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the certificate_map field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `certificate_map` field.


### fn withDescription

```ts
withDescription()
```

`google-beta.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withHttpKeepAliveTimeoutSec

```ts
withHttpKeepAliveTimeoutSec()
```

`google-beta.number.withHttpKeepAliveTimeoutSec` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the http_keep_alive_timeout_sec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `http_keep_alive_timeout_sec` field.


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


### fn withProxyBind

```ts
withProxyBind()
```

`google-beta.bool.withProxyBind` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the proxy_bind field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `proxy_bind` field.


### fn withQuicOverride

```ts
withQuicOverride()
```

`google-beta.string.withQuicOverride` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the quic_override field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `quic_override` field.


### fn withServerTlsPolicy

```ts
withServerTlsPolicy()
```

`google-beta.string.withServerTlsPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the server_tls_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `server_tls_policy` field.


### fn withSslCertificates

```ts
withSslCertificates()
```

`google-beta.list.withSslCertificates` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the ssl_certificates field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `ssl_certificates` field.


### fn withSslPolicy

```ts
withSslPolicy()
```

`google-beta.string.withSslPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ssl_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ssl_policy` field.


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


### fn withUrlMap

```ts
withUrlMap()
```

`google-beta.string.withUrlMap` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the url_map field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `url_map` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_compute_target_https_proxy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
