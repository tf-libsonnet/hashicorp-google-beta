---
permalink: /google_network_security_server_tls_policy/
---

# google_network_security_server_tls_policy

`google_network_security_server_tls_policy` represents the `google-beta_google_network_security_server_tls_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAllowOpen()`](#fn-withallowopen)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMtlsPolicy()`](#fn-withmtlspolicy)
* [`fn withMtlsPolicyMixin()`](#fn-withmtlspolicymixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withServerCertificate()`](#fn-withservercertificate)
* [`fn withServerCertificateMixin()`](#fn-withservercertificatemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj mtls_policy`](#obj-mtls_policy)
  * [`fn new()`](#fn-mtls_policynew)
  * [`obj mtls_policy.client_validation_ca`](#obj-mtls_policyclient_validation_ca)
    * [`fn new()`](#fn-mtls_policyclient_validation_canew)
    * [`obj mtls_policy.client_validation_ca.certificate_provider_instance`](#obj-mtls_policyclient_validation_cacertificate_provider_instance)
      * [`fn new()`](#fn-mtls_policyclient_validation_cacertificate_provider_instancenew)
    * [`obj mtls_policy.client_validation_ca.grpc_endpoint`](#obj-mtls_policyclient_validation_cagrpc_endpoint)
      * [`fn new()`](#fn-mtls_policyclient_validation_cagrpc_endpointnew)
* [`obj server_certificate`](#obj-server_certificate)
  * [`fn new()`](#fn-server_certificatenew)
  * [`obj server_certificate.certificate_provider_instance`](#obj-server_certificatecertificate_provider_instance)
    * [`fn new()`](#fn-server_certificatecertificate_provider_instancenew)
  * [`obj server_certificate.grpc_endpoint`](#obj-server_certificategrpc_endpoint)
    * [`fn new()`](#fn-server_certificategrpc_endpointnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.new` injects a new `google-beta_google_network_security_server_tls_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_network_security_server_tls_policy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_network_security_server_tls_policy` using the reference:

    $._ref.google-beta_google_network_security_server_tls_policy.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_network_security_server_tls_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `allow_open` (`bool`): This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.
Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80. When `null`, the `allow_open` field will be omitted from the resulting object.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the ServerTlsPolicy resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the server tls policy.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the ServerTlsPolicy resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `mtls_policy` (`list[obj]`): This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. When `null`, the `mtls_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.new](#fn-mtls_policynew) constructor.
  - `server_certificate` (`list[obj]`): Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS. When `null`, the `server_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.server_certificate.new](#fn-server_certificatenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_network_security_server_tls_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_server_tls_policy`
Terraform resource.

Unlike [google-beta.google_network_security_server_tls_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `allow_open` (`bool`): This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.
Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80. When `null`, the `allow_open` field will be omitted from the resulting object.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the ServerTlsPolicy resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the server tls policy.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the ServerTlsPolicy resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `mtls_policy` (`list[obj]`): This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. When `null`, the `mtls_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.new](#fn-mtls_policynew) constructor.
  - `server_certificate` (`list[obj]`): Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS. When `null`, the `server_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.server_certificate.new](#fn-server_certificatenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_server_tls_policy` resource into the root Terraform configuration.


### fn withAllowOpen

```ts
withAllowOpen()
```

`google-beta.bool.withAllowOpen` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the allow_open field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `allow_open` field.


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


### fn withMtlsPolicy

```ts
withMtlsPolicy()
```

`google-beta.list[obj].withMtlsPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mtls_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withMtlsPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mtls_policy` field.


### fn withMtlsPolicyMixin

```ts
withMtlsPolicyMixin()
```

`google-beta.list[obj].withMtlsPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the mtls_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withMtlsPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `mtls_policy` field.


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


### fn withServerCertificate

```ts
withServerCertificate()
```

`google-beta.list[obj].withServerCertificate` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the server_certificate field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withServerCertificateMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `server_certificate` field.


### fn withServerCertificateMixin

```ts
withServerCertificateMixin()
```

`google-beta.list[obj].withServerCertificateMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the server_certificate field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withServerCertificate](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `server_certificate` field.


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


## obj mtls_policy



### fn mtls_policy.new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.mtls_policy.new` constructs a new object with attributes and blocks configured for the `mtls_policy`
Terraform sub block.



**Args**:
  - `client_validation_mode` (`string`): When the client presents an invalid certificate or no certificate to the load balancer, the clientValidationMode specifies how the client connection is handled.
Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty. Possible values: [&#34;CLIENT_VALIDATION_MODE_UNSPECIFIED&#34;, &#34;ALLOW_INVALID_OR_MISSING_CLIENT_CERT&#34;, &#34;REJECT_INVALID&#34;] When `null`, the `client_validation_mode` field will be omitted from the resulting object.
  - `client_validation_trust_config` (`string`): Reference to the TrustConfig from certificatemanager.googleapis.com namespace.
If specified, the chain validation will be performed against certificates configured in the given TrustConfig.
Allowed only if the policy is to be used with external HTTPS load balancers. When `null`, the `client_validation_trust_config` field will be omitted from the resulting object.
  - `client_validation_ca` (`list[obj]`): Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty.
Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate. When `null`, the `client_validation_ca` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.new](#fn-mtls_policyclient_validation_canew) constructor.

**Returns**:
  - An attribute object that represents the `mtls_policy` sub block.


## obj mtls_policy.client_validation_ca



### fn mtls_policy.client_validation_ca.new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.new` constructs a new object with attributes and blocks configured for the `client_validation_ca`
Terraform sub block.



**Args**:
  - `certificate_provider_instance` (`list[obj]`): Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.
Defines a mechanism to provision server identity (public and private keys). Cannot be combined with allowOpen as a permissive mode that allows both plain text and TLS is not supported. When `null`, the `certificate_provider_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.certificate_provider_instance.new](#fn-mtls_policymtls_policycertificate_provider_instancenew) constructor.
  - `grpc_endpoint` (`list[obj]`): gRPC specific configuration to access the gRPC server to obtain the cert and private key. When `null`, the `grpc_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.grpc_endpoint.new](#fn-mtls_policymtls_policygrpc_endpointnew) constructor.

**Returns**:
  - An attribute object that represents the `client_validation_ca` sub block.


## obj mtls_policy.client_validation_ca.certificate_provider_instance



### fn mtls_policy.client_validation_ca.certificate_provider_instance.new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.certificate_provider_instance.new` constructs a new object with attributes and blocks configured for the `certificate_provider_instance`
Terraform sub block.



**Args**:
  - `plugin_instance` (`string`): Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to &#34;google_cloud_private_spiffe&#34; to use Certificate Authority Service certificate provider instance.

**Returns**:
  - An attribute object that represents the `certificate_provider_instance` sub block.


## obj mtls_policy.client_validation_ca.grpc_endpoint



### fn mtls_policy.client_validation_ca.grpc_endpoint.new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.mtls_policy.client_validation_ca.grpc_endpoint.new` constructs a new object with attributes and blocks configured for the `grpc_endpoint`
Terraform sub block.



**Args**:
  - `target_uri` (`string`): The target URI of the gRPC endpoint. Only UDS path is supported, and should start with &#34;unix:&#34;.

**Returns**:
  - An attribute object that represents the `grpc_endpoint` sub block.


## obj server_certificate



### fn server_certificate.new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.server_certificate.new` constructs a new object with attributes and blocks configured for the `server_certificate`
Terraform sub block.



**Args**:
  - `certificate_provider_instance` (`list[obj]`): Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.
Defines a mechanism to provision server identity (public and private keys). Cannot be combined with allowOpen as a permissive mode that allows both plain text and TLS is not supported. When `null`, the `certificate_provider_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.server_certificate.certificate_provider_instance.new](#fn-server_certificatecertificate_provider_instancenew) constructor.
  - `grpc_endpoint` (`list[obj]`): gRPC specific configuration to access the gRPC server to obtain the cert and private key. When `null`, the `grpc_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_server_tls_policy.server_certificate.grpc_endpoint.new](#fn-server_certificategrpc_endpointnew) constructor.

**Returns**:
  - An attribute object that represents the `server_certificate` sub block.


## obj server_certificate.certificate_provider_instance



### fn server_certificate.certificate_provider_instance.new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.server_certificate.certificate_provider_instance.new` constructs a new object with attributes and blocks configured for the `certificate_provider_instance`
Terraform sub block.



**Args**:
  - `plugin_instance` (`string`): Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to &#34;google_cloud_private_spiffe&#34; to use Certificate Authority Service certificate provider instance.

**Returns**:
  - An attribute object that represents the `certificate_provider_instance` sub block.


## obj server_certificate.grpc_endpoint



### fn server_certificate.grpc_endpoint.new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.server_certificate.grpc_endpoint.new` constructs a new object with attributes and blocks configured for the `grpc_endpoint`
Terraform sub block.



**Args**:
  - `target_uri` (`string`): The target URI of the gRPC endpoint. Only UDS path is supported, and should start with &#34;unix:&#34;.

**Returns**:
  - An attribute object that represents the `grpc_endpoint` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_network_security_server_tls_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
