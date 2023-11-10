---
permalink: /google_network_security_client_tls_policy/
---

# google_network_security_client_tls_policy

`google_network_security_client_tls_policy` represents the `google-beta_google_network_security_client_tls_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClientCertificate()`](#fn-withclientcertificate)
* [`fn withClientCertificateMixin()`](#fn-withclientcertificatemixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withServerValidationCa()`](#fn-withservervalidationca)
* [`fn withServerValidationCaMixin()`](#fn-withservervalidationcamixin)
* [`fn withSni()`](#fn-withsni)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj client_certificate`](#obj-client_certificate)
  * [`fn new()`](#fn-client_certificatenew)
  * [`obj client_certificate.certificate_provider_instance`](#obj-client_certificatecertificate_provider_instance)
    * [`fn new()`](#fn-client_certificatecertificate_provider_instancenew)
  * [`obj client_certificate.grpc_endpoint`](#obj-client_certificategrpc_endpoint)
    * [`fn new()`](#fn-client_certificategrpc_endpointnew)
* [`obj server_validation_ca`](#obj-server_validation_ca)
  * [`fn new()`](#fn-server_validation_canew)
  * [`obj server_validation_ca.certificate_provider_instance`](#obj-server_validation_cacertificate_provider_instance)
    * [`fn new()`](#fn-server_validation_cacertificate_provider_instancenew)
  * [`obj server_validation_ca.grpc_endpoint`](#obj-server_validation_cagrpc_endpoint)
    * [`fn new()`](#fn-server_validation_cagrpc_endpointnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_network_security_client_tls_policy.new` injects a new `google-beta_google_network_security_client_tls_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_network_security_client_tls_policy.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_network_security_client_tls_policy` using the reference:

    $._ref.google-beta_google_network_security_client_tls_policy.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_network_security_client_tls_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the ClientTlsPolicy resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the client tls policy.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the ClientTlsPolicy resource.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `sni` (`string`): Server Name Indication string to present to the server during TLS handshake. E.g: &#34;secure.example.com&#34;. When `null`, the `sni` field will be omitted from the resulting object.
  - `client_certificate` (`list[obj]`): Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS. When `null`, the `client_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.client_certificate.new](#fn-client_certificatenew) constructor.
  - `server_validation_ca` (`list[obj]`): Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate. When `null`, the `server_validation_ca` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.server_validation_ca.new](#fn-server_validation_canew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_network_security_client_tls_policy.newAttrs` constructs a new object with attributes and blocks configured for the `google_network_security_client_tls_policy`
Terraform resource.

Unlike [google-beta.google_network_security_client_tls_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the ClientTlsPolicy resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the client tls policy.
The default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): Name of the ClientTlsPolicy resource.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `sni` (`string`): Server Name Indication string to present to the server during TLS handshake. E.g: &#34;secure.example.com&#34;. When `null`, the `sni` field will be omitted from the resulting object.
  - `client_certificate` (`list[obj]`): Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS. When `null`, the `client_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.client_certificate.new](#fn-client_certificatenew) constructor.
  - `server_validation_ca` (`list[obj]`): Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate. When `null`, the `server_validation_ca` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.server_validation_ca.new](#fn-server_validation_canew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_network_security_client_tls_policy` resource into the root Terraform configuration.


### fn withClientCertificate

```ts
withClientCertificate()
```

`google-beta.list[obj].withClientCertificate` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the client_certificate field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withClientCertificateMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `client_certificate` field.


### fn withClientCertificateMixin

```ts
withClientCertificateMixin()
```

`google-beta.list[obj].withClientCertificateMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the client_certificate field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withClientCertificate](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `client_certificate` field.


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


### fn withServerValidationCa

```ts
withServerValidationCa()
```

`google-beta.list[obj].withServerValidationCa` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the server_validation_ca field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withServerValidationCaMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `server_validation_ca` field.


### fn withServerValidationCaMixin

```ts
withServerValidationCaMixin()
```

`google-beta.list[obj].withServerValidationCaMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the server_validation_ca field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withServerValidationCa](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `server_validation_ca` field.


### fn withSni

```ts
withSni()
```

`google-beta.string.withSni` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the sni field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `sni` field.


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


## obj client_certificate



### fn client_certificate.new

```ts
new()
```


`google-beta.google_network_security_client_tls_policy.client_certificate.new` constructs a new object with attributes and blocks configured for the `client_certificate`
Terraform sub block.



**Args**:
  - `certificate_provider_instance` (`list[obj]`): The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information. When `null`, the `certificate_provider_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.client_certificate.certificate_provider_instance.new](#fn-client_certificatecertificate_provider_instancenew) constructor.
  - `grpc_endpoint` (`list[obj]`): gRPC specific configuration to access the gRPC server to obtain the cert and private key. When `null`, the `grpc_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.client_certificate.grpc_endpoint.new](#fn-client_certificategrpc_endpointnew) constructor.

**Returns**:
  - An attribute object that represents the `client_certificate` sub block.


## obj client_certificate.certificate_provider_instance



### fn client_certificate.certificate_provider_instance.new

```ts
new()
```


`google-beta.google_network_security_client_tls_policy.client_certificate.certificate_provider_instance.new` constructs a new object with attributes and blocks configured for the `certificate_provider_instance`
Terraform sub block.



**Args**:
  - `plugin_instance` (`string`): Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to &#34;google_cloud_private_spiffe&#34; to use Certificate Authority Service certificate provider instance.

**Returns**:
  - An attribute object that represents the `certificate_provider_instance` sub block.


## obj client_certificate.grpc_endpoint



### fn client_certificate.grpc_endpoint.new

```ts
new()
```


`google-beta.google_network_security_client_tls_policy.client_certificate.grpc_endpoint.new` constructs a new object with attributes and blocks configured for the `grpc_endpoint`
Terraform sub block.



**Args**:
  - `target_uri` (`string`): The target URI of the gRPC endpoint. Only UDS path is supported, and should start with &#34;unix:&#34;.

**Returns**:
  - An attribute object that represents the `grpc_endpoint` sub block.


## obj server_validation_ca



### fn server_validation_ca.new

```ts
new()
```


`google-beta.google_network_security_client_tls_policy.server_validation_ca.new` constructs a new object with attributes and blocks configured for the `server_validation_ca`
Terraform sub block.



**Args**:
  - `certificate_provider_instance` (`list[obj]`): The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information. When `null`, the `certificate_provider_instance` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.server_validation_ca.certificate_provider_instance.new](#fn-server_validation_cacertificate_provider_instancenew) constructor.
  - `grpc_endpoint` (`list[obj]`): gRPC specific configuration to access the gRPC server to obtain the cert and private key. When `null`, the `grpc_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_network_security_client_tls_policy.server_validation_ca.grpc_endpoint.new](#fn-server_validation_cagrpc_endpointnew) constructor.

**Returns**:
  - An attribute object that represents the `server_validation_ca` sub block.


## obj server_validation_ca.certificate_provider_instance



### fn server_validation_ca.certificate_provider_instance.new

```ts
new()
```


`google-beta.google_network_security_client_tls_policy.server_validation_ca.certificate_provider_instance.new` constructs a new object with attributes and blocks configured for the `certificate_provider_instance`
Terraform sub block.



**Args**:
  - `plugin_instance` (`string`): Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to &#34;google_cloud_private_spiffe&#34; to use Certificate Authority Service certificate provider instance.

**Returns**:
  - An attribute object that represents the `certificate_provider_instance` sub block.


## obj server_validation_ca.grpc_endpoint



### fn server_validation_ca.grpc_endpoint.new

```ts
new()
```


`google-beta.google_network_security_client_tls_policy.server_validation_ca.grpc_endpoint.new` constructs a new object with attributes and blocks configured for the `grpc_endpoint`
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


`google-beta.google_network_security_client_tls_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
