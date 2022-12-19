---
permalink: /google_api_gateway_api_config/
---

# google_api_gateway_api_config

`google_api_gateway_api_config` represents the `google-beta_google_api_gateway_api_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApi()`](#fn-withapi)
* [`fn withApiConfigId()`](#fn-withapiconfigid)
* [`fn withApiConfigIdPrefix()`](#fn-withapiconfigidprefix)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withGatewayConfig()`](#fn-withgatewayconfig)
* [`fn withGatewayConfigMixin()`](#fn-withgatewayconfigmixin)
* [`fn withGrpcServices()`](#fn-withgrpcservices)
* [`fn withGrpcServicesMixin()`](#fn-withgrpcservicesmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withManagedServiceConfigs()`](#fn-withmanagedserviceconfigs)
* [`fn withManagedServiceConfigsMixin()`](#fn-withmanagedserviceconfigsmixin)
* [`fn withOpenapiDocuments()`](#fn-withopenapidocuments)
* [`fn withOpenapiDocumentsMixin()`](#fn-withopenapidocumentsmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj gateway_config`](#obj-gateway_config)
  * [`fn new()`](#fn-gateway_confignew)
  * [`obj gateway_config.backend_config`](#obj-gateway_configbackend_config)
    * [`fn new()`](#fn-gateway_configbackend_confignew)
* [`obj grpc_services`](#obj-grpc_services)
  * [`fn new()`](#fn-grpc_servicesnew)
  * [`obj grpc_services.file_descriptor_set`](#obj-grpc_servicesfile_descriptor_set)
    * [`fn new()`](#fn-grpc_servicesfile_descriptor_setnew)
  * [`obj grpc_services.source`](#obj-grpc_servicessource)
    * [`fn new()`](#fn-grpc_servicessourcenew)
* [`obj managed_service_configs`](#obj-managed_service_configs)
  * [`fn new()`](#fn-managed_service_configsnew)
* [`obj openapi_documents`](#obj-openapi_documents)
  * [`fn new()`](#fn-openapi_documentsnew)
  * [`obj openapi_documents.document`](#obj-openapi_documentsdocument)
    * [`fn new()`](#fn-openapi_documentsdocumentnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google-beta.google_api_gateway_api_config.new` injects a new `google-beta_google_api_gateway_api_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google-beta.google_api_gateway_api_config.new('some_id')

You can get the reference to the `id` field of the created `google-beta.google_api_gateway_api_config` using the reference:

    $._ref.google-beta_google_api_gateway_api_config.some_id.get('id')

This is the same as directly entering `"${ google-beta_google_api_gateway_api_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `api` (`string`): The API to attach the config to.
  - `api_config_id` (`string`): Identifier to assign to the API Config. Must be unique within scope of the parent resource(api). When `null`, the `api_config_id` field will be omitted from the resulting object.
  - `api_config_id_prefix` (`string`): Creates a unique name beginning with the specified prefix. If this and api_config_id are unspecified, a random value is chosen for the name. When `null`, the `api_config_id_prefix` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-visible name for the API. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `gateway_config` (`list[obj]`): Immutable. Gateway specific configuration.
If not specified, backend authentication will be set to use OIDC authentication using the default compute service account When `null`, the `gateway_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.gateway_config.new](#fn-google_api_gateway_api_configgateway_confignew) constructor.
  - `grpc_services` (`list[obj]`): gRPC service definition files. If specified, openapiDocuments must not be included. When `null`, the `grpc_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.grpc_services.new](#fn-google_api_gateway_api_configgrpc_servicesnew) constructor.
  - `managed_service_configs` (`list[obj]`): Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using &#34;last one wins&#34; semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields. When `null`, the `managed_service_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.managed_service_configs.new](#fn-google_api_gateway_api_configmanaged_service_configsnew) constructor.
  - `openapi_documents` (`list[obj]`): OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included. When `null`, the `openapi_documents` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.openapi_documents.new](#fn-google_api_gateway_api_configopenapi_documentsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.timeouts.new](#fn-google_api_gateway_api_configtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google-beta.google_api_gateway_api_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_api_gateway_api_config`
Terraform resource.

Unlike [google-beta.google_api_gateway_api_config.new](#fn-google_api_gateway_api_confignew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `api` (`string`): The API to attach the config to.
  - `api_config_id` (`string`): Identifier to assign to the API Config. Must be unique within scope of the parent resource(api). When `null`, the `api_config_id` field will be omitted from the resulting object.
  - `api_config_id_prefix` (`string`): Creates a unique name beginning with the specified prefix. If this and api_config_id are unspecified, a random value is chosen for the name. When `null`, the `api_config_id_prefix` field will be omitted from the resulting object.
  - `display_name` (`string`): A user-visible name for the API. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `gateway_config` (`list[obj]`): Immutable. Gateway specific configuration.
If not specified, backend authentication will be set to use OIDC authentication using the default compute service account When `null`, the `gateway_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.gateway_config.new](#fn-google_api_gateway_api_configgateway_confignew) constructor.
  - `grpc_services` (`list[obj]`): gRPC service definition files. If specified, openapiDocuments must not be included. When `null`, the `grpc_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.grpc_services.new](#fn-google_api_gateway_api_configgrpc_servicesnew) constructor.
  - `managed_service_configs` (`list[obj]`): Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using &#34;last one wins&#34; semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields. When `null`, the `managed_service_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.managed_service_configs.new](#fn-google_api_gateway_api_configmanaged_service_configsnew) constructor.
  - `openapi_documents` (`list[obj]`): OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included. When `null`, the `openapi_documents` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.openapi_documents.new](#fn-google_api_gateway_api_configopenapi_documentsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.timeouts.new](#fn-google_api_gateway_api_configtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_api_gateway_api_config` resource into the root Terraform configuration.


### fn withApi

```ts
withApi()
```

`google-beta.string.withApi` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the api field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `api` field.


### fn withApiConfigId

```ts
withApiConfigId()
```

`google-beta.string.withApiConfigId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the api_config_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `api_config_id` field.


### fn withApiConfigIdPrefix

```ts
withApiConfigIdPrefix()
```

`google-beta.string.withApiConfigIdPrefix` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the api_config_id_prefix field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `api_config_id_prefix` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withGatewayConfig

```ts
withGatewayConfig()
```

`google-beta.list[obj].withGatewayConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gateway_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withGatewayConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gateway_config` field.


### fn withGatewayConfigMixin

```ts
withGatewayConfigMixin()
```

`google-beta.list[obj].withGatewayConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gateway_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withGatewayConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gateway_config` field.


### fn withGrpcServices

```ts
withGrpcServices()
```

`google-beta.list[obj].withGrpcServices` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the grpc_services field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withGrpcServicesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `grpc_services` field.


### fn withGrpcServicesMixin

```ts
withGrpcServicesMixin()
```

`google-beta.list[obj].withGrpcServicesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the grpc_services field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withGrpcServices](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `grpc_services` field.


### fn withLabels

```ts
withLabels()
```

`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withManagedServiceConfigs

```ts
withManagedServiceConfigs()
```

`google-beta.list[obj].withManagedServiceConfigs` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the managed_service_configs field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withManagedServiceConfigsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `managed_service_configs` field.


### fn withManagedServiceConfigsMixin

```ts
withManagedServiceConfigsMixin()
```

`google-beta.list[obj].withManagedServiceConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the managed_service_configs field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withManagedServiceConfigs](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `managed_service_configs` field.


### fn withOpenapiDocuments

```ts
withOpenapiDocuments()
```

`google-beta.list[obj].withOpenapiDocuments` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the openapi_documents field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google-beta.list[obj].withOpenapiDocumentsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `openapi_documents` field.


### fn withOpenapiDocumentsMixin

```ts
withOpenapiDocumentsMixin()
```

`google-beta.list[obj].withOpenapiDocumentsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the openapi_documents field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google-beta.list[obj].withOpenapiDocuments](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `openapi_documents` field.


### fn withProject

```ts
withProject()
```

`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj gateway_config



### fn gateway_config.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.gateway_config.new` constructs a new object with attributes and blocks configured for the `gateway_config`
Terraform sub block.



**Args**:
  - `backend_config` (`list[obj]`): Backend settings that are applied to all backends of the Gateway. When `null`, the `backend_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.gateway_config.backend_config.new](#fn-gateway_configbackend_confignew) constructor.

**Returns**:
  - An attribute object that represents the `gateway_config` sub block.


## obj gateway_config.backend_config



### fn gateway_config.backend_config.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.gateway_config.backend_config.new` constructs a new object with attributes and blocks configured for the `backend_config`
Terraform sub block.



**Args**:
  - `google_service_account` (`string`): Google Cloud IAM service account used to sign OIDC tokens for backends that have authentication configured
(https://cloud.google.com/service-infrastructure/docs/service-management/reference/rest/v1/services.configs#backend).

**Returns**:
  - An attribute object that represents the `backend_config` sub block.


## obj grpc_services



### fn grpc_services.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.grpc_services.new` constructs a new object with attributes and blocks configured for the `grpc_services`
Terraform sub block.



**Args**:
  - `file_descriptor_set` (`list[obj]`): Input only. File descriptor set, generated by protoc.
To generate, use protoc with imports and source info included. For an example test.proto file, the following command would put the value in a new file named out.pb.

$ protoc --include_imports --include_source_info test.proto -o out.pb When `null`, the `file_descriptor_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.grpc_services.file_descriptor_set.new](#fn-grpc_servicesfile_descriptor_setnew) constructor.
  - `source` (`list[obj]`): Uncompiled proto files associated with the descriptor set, used for display purposes (server-side compilation is not supported). These should match the inputs to &#39;protoc&#39; command used to generate fileDescriptorSet. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.grpc_services.source.new](#fn-grpc_servicessourcenew) constructor.

**Returns**:
  - An attribute object that represents the `grpc_services` sub block.


## obj grpc_services.file_descriptor_set



### fn grpc_services.file_descriptor_set.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.grpc_services.file_descriptor_set.new` constructs a new object with attributes and blocks configured for the `file_descriptor_set`
Terraform sub block.



**Args**:
  - `contents` (`string`): Base64 encoded content of the file.
  - `path` (`string`): The file path (full or relative path). This is typically the path of the file when it is uploaded.

**Returns**:
  - An attribute object that represents the `file_descriptor_set` sub block.


## obj grpc_services.source



### fn grpc_services.source.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.grpc_services.source.new` constructs a new object with attributes and blocks configured for the `source`
Terraform sub block.



**Args**:
  - `contents` (`string`): Base64 encoded content of the file.
  - `path` (`string`): The file path (full or relative path). This is typically the path of the file when it is uploaded.

**Returns**:
  - An attribute object that represents the `source` sub block.


## obj managed_service_configs



### fn managed_service_configs.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.managed_service_configs.new` constructs a new object with attributes and blocks configured for the `managed_service_configs`
Terraform sub block.



**Args**:
  - `contents` (`string`): Base64 encoded content of the file.
  - `path` (`string`): The file path (full or relative path). This is typically the path of the file when it is uploaded.

**Returns**:
  - An attribute object that represents the `managed_service_configs` sub block.


## obj openapi_documents



### fn openapi_documents.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.openapi_documents.new` constructs a new object with attributes and blocks configured for the `openapi_documents`
Terraform sub block.



**Args**:
  - `document` (`list[obj]`): The OpenAPI Specification document file. When `null`, the `document` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.openapi_documents.document.new](#fn-openapi_documentsdocumentnew) constructor.

**Returns**:
  - An attribute object that represents the `openapi_documents` sub block.


## obj openapi_documents.document



### fn openapi_documents.document.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.openapi_documents.document.new` constructs a new object with attributes and blocks configured for the `document`
Terraform sub block.



**Args**:
  - `contents` (`string`): Base64 encoded content of the file.
  - `path` (`string`): The file path (full or relative path). This is typically the path of the file when it is uploaded.

**Returns**:
  - An attribute object that represents the `document` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google-beta.google_api_gateway_api_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
