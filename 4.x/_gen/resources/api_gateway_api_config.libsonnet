local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='google_api_gateway_api_config', url='', help='`google_api_gateway_api_config` represents the `google-beta_google_api_gateway_api_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  gateway_config:: {
    backend_config:: {
      '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.gateway_config.backend_config.new` constructs a new object with attributes and blocks configured for the `backend_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `google_service_account` (`string`): Google Cloud IAM service account used to sign OIDC tokens for backends that have authentication configured\n(https://cloud.google.com/service-infrastructure/docs/service-management/reference/rest/v1/services.configs#backend).\n\n**Returns**:\n  - An attribute object that represents the `backend_config` sub block.\n', args=[]),
      new(
        google_service_account
      ):: std.prune(a={
        google_service_account: google_service_account,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.gateway_config.new` constructs a new object with attributes and blocks configured for the `gateway_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backend_config` (`list[obj]`): Backend settings that are applied to all backends of the Gateway. When `null`, the `backend_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.gateway_config.backend_config.new](#fn-gateway_configbackend_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `gateway_config` sub block.\n', args=[]),
    new(
      backend_config=null
    ):: std.prune(a={
      backend_config: backend_config,
    }),
  },
  grpc_services:: {
    file_descriptor_set:: {
      '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.grpc_services.file_descriptor_set.new` constructs a new object with attributes and blocks configured for the `file_descriptor_set`\nTerraform sub block.\n\n\n\n**Args**:\n  - `contents` (`string`): Base64 encoded content of the file.\n  - `path` (`string`): The file path (full or relative path). This is typically the path of the file when it is uploaded.\n\n**Returns**:\n  - An attribute object that represents the `file_descriptor_set` sub block.\n', args=[]),
      new(
        contents,
        path
      ):: std.prune(a={
        contents: contents,
        path: path,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.grpc_services.new` constructs a new object with attributes and blocks configured for the `grpc_services`\nTerraform sub block.\n\n\n\n**Args**:\n  - `file_descriptor_set` (`list[obj]`): Input only. File descriptor set, generated by protoc.\nTo generate, use protoc with imports and source info included. For an example test.proto file, the following command would put the value in a new file named out.pb.\n\n$ protoc --include_imports --include_source_info test.proto -o out.pb When `null`, the `file_descriptor_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.grpc_services.file_descriptor_set.new](#fn-grpc_servicesfile_descriptor_setnew) constructor.\n  - `source` (`list[obj]`): Uncompiled proto files associated with the descriptor set, used for display purposes (server-side compilation is not supported). These should match the inputs to &#39;protoc&#39; command used to generate fileDescriptorSet. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.grpc_services.source.new](#fn-grpc_servicessourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `grpc_services` sub block.\n', args=[]),
    new(
      file_descriptor_set=null,
      source=null
    ):: std.prune(a={
      file_descriptor_set: file_descriptor_set,
      source: source,
    }),
    source:: {
      '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.grpc_services.source.new` constructs a new object with attributes and blocks configured for the `source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `contents` (`string`): Base64 encoded content of the file.\n  - `path` (`string`): The file path (full or relative path). This is typically the path of the file when it is uploaded.\n\n**Returns**:\n  - An attribute object that represents the `source` sub block.\n', args=[]),
      new(
        contents,
        path
      ):: std.prune(a={
        contents: contents,
        path: path,
      }),
    },
  },
  managed_service_configs:: {
    '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.managed_service_configs.new` constructs a new object with attributes and blocks configured for the `managed_service_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `contents` (`string`): Base64 encoded content of the file.\n  - `path` (`string`): The file path (full or relative path). This is typically the path of the file when it is uploaded.\n\n**Returns**:\n  - An attribute object that represents the `managed_service_configs` sub block.\n', args=[]),
    new(
      contents,
      path
    ):: std.prune(a={
      contents: contents,
      path: path,
    }),
  },
  '#new':: d.fn(help="\n`google-beta.google_api_gateway_api_config.new` injects a new `google-beta_google_api_gateway_api_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google-beta.google_api_gateway_api_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google-beta.google_api_gateway_api_config` using the reference:\n\n    $._ref.google-beta_google_api_gateway_api_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google-beta_google_api_gateway_api_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `api` (`string`): The API to attach the config to.\n  - `api_config_id` (`string`): Identifier to assign to the API Config. Must be unique within scope of the parent resource(api). When `null`, the `api_config_id` field will be omitted from the resulting object.\n  - `api_config_id_prefix` (`string`): Creates a unique name beginning with the specified prefix. If this and api_config_id are unspecified, a random value is chosen for the name. When `null`, the `api_config_id_prefix` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-visible name for the API. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `gateway_config` (`list[obj]`): Immutable. Gateway specific configuration.\nIf not specified, backend authentication will be set to use OIDC authentication using the default compute service account When `null`, the `gateway_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.gateway_config.new](#fn-gateway_confignew) constructor.\n  - `grpc_services` (`list[obj]`): gRPC service definition files. If specified, openapiDocuments must not be included. When `null`, the `grpc_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.grpc_services.new](#fn-grpc_servicesnew) constructor.\n  - `managed_service_configs` (`list[obj]`): Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.\nIf multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using \u0026#34;last one wins\u0026#34; semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields. When `null`, the `managed_service_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.managed_service_configs.new](#fn-managed_service_configsnew) constructor.\n  - `openapi_documents` (`list[obj]`): OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included. When `null`, the `openapi_documents` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.openapi_documents.new](#fn-openapi_documentsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    api,
    api_config_id=null,
    api_config_id_prefix=null,
    display_name=null,
    gateway_config=null,
    grpc_services=null,
    labels=null,
    managed_service_configs=null,
    openapi_documents=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_api_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      api=api,
      api_config_id=api_config_id,
      api_config_id_prefix=api_config_id_prefix,
      display_name=display_name,
      gateway_config=gateway_config,
      grpc_services=grpc_services,
      labels=labels,
      managed_service_configs=managed_service_configs,
      openapi_documents=openapi_documents,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google-beta.google_api_gateway_api_config.newAttrs` constructs a new object with attributes and blocks configured for the `google_api_gateway_api_config`\nTerraform resource.\n\nUnlike [google-beta.google_api_gateway_api_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `api` (`string`): The API to attach the config to.\n  - `api_config_id` (`string`): Identifier to assign to the API Config. Must be unique within scope of the parent resource(api). When `null`, the `api_config_id` field will be omitted from the resulting object.\n  - `api_config_id_prefix` (`string`): Creates a unique name beginning with the specified prefix. If this and api_config_id are unspecified, a random value is chosen for the name. When `null`, the `api_config_id_prefix` field will be omitted from the resulting object.\n  - `display_name` (`string`): A user-visible name for the API. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `gateway_config` (`list[obj]`): Immutable. Gateway specific configuration.\nIf not specified, backend authentication will be set to use OIDC authentication using the default compute service account When `null`, the `gateway_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.gateway_config.new](#fn-gateway_confignew) constructor.\n  - `grpc_services` (`list[obj]`): gRPC service definition files. If specified, openapiDocuments must not be included. When `null`, the `grpc_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.grpc_services.new](#fn-grpc_servicesnew) constructor.\n  - `managed_service_configs` (`list[obj]`): Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.\nIf multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using &#34;last one wins&#34; semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields. When `null`, the `managed_service_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.managed_service_configs.new](#fn-managed_service_configsnew) constructor.\n  - `openapi_documents` (`list[obj]`): OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included. When `null`, the `openapi_documents` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.openapi_documents.new](#fn-openapi_documentsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `google_api_gateway_api_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    api,
    api_config_id=null,
    api_config_id_prefix=null,
    display_name=null,
    gateway_config=null,
    grpc_services=null,
    labels=null,
    managed_service_configs=null,
    openapi_documents=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    api: api,
    api_config_id: api_config_id,
    api_config_id_prefix: api_config_id_prefix,
    display_name: display_name,
    gateway_config: gateway_config,
    grpc_services: grpc_services,
    labels: labels,
    managed_service_configs: managed_service_configs,
    openapi_documents: openapi_documents,
    project: project,
    timeouts: timeouts,
  }),
  openapi_documents:: {
    document:: {
      '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.openapi_documents.document.new` constructs a new object with attributes and blocks configured for the `document`\nTerraform sub block.\n\n\n\n**Args**:\n  - `contents` (`string`): Base64 encoded content of the file.\n  - `path` (`string`): The file path (full or relative path). This is typically the path of the file when it is uploaded.\n\n**Returns**:\n  - An attribute object that represents the `document` sub block.\n', args=[]),
      new(
        contents,
        path
      ):: std.prune(a={
        contents: contents,
        path: path,
      }),
    },
    '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.openapi_documents.new` constructs a new object with attributes and blocks configured for the `openapi_documents`\nTerraform sub block.\n\n\n\n**Args**:\n  - `document` (`list[obj]`): The OpenAPI Specification document file. When `null`, the `document` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google-beta.google_api_gateway_api_config.openapi_documents.document.new](#fn-openapi_documentsdocumentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `openapi_documents` sub block.\n', args=[]),
    new(
      document=null
    ):: std.prune(a={
      document: document,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google-beta.google_api_gateway_api_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withApi':: d.fn(help='`google-beta.string.withApi` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the api field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `api` field.\n', args=[]),
  withApi(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          api: value,
        },
      },
    },
  },
  '#withApiConfigId':: d.fn(help='`google-beta.string.withApiConfigId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the api_config_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `api_config_id` field.\n', args=[]),
  withApiConfigId(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          api_config_id: value,
        },
      },
    },
  },
  '#withApiConfigIdPrefix':: d.fn(help='`google-beta.string.withApiConfigIdPrefix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the api_config_id_prefix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `api_config_id_prefix` field.\n', args=[]),
  withApiConfigIdPrefix(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          api_config_id_prefix: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google-beta.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withGatewayConfig':: d.fn(help='`google-beta.list[obj].withGatewayConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gateway_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withGatewayConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gateway_config` field.\n', args=[]),
  withGatewayConfig(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          gateway_config: value,
        },
      },
    },
  },
  '#withGatewayConfigMixin':: d.fn(help='`google-beta.list[obj].withGatewayConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gateway_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withGatewayConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gateway_config` field.\n', args=[]),
  withGatewayConfigMixin(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          gateway_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGrpcServices':: d.fn(help='`google-beta.list[obj].withGrpcServices` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the grpc_services field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withGrpcServicesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `grpc_services` field.\n', args=[]),
  withGrpcServices(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          grpc_services: value,
        },
      },
    },
  },
  '#withGrpcServicesMixin':: d.fn(help='`google-beta.list[obj].withGrpcServicesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the grpc_services field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withGrpcServices](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `grpc_services` field.\n', args=[]),
  withGrpcServicesMixin(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          grpc_services+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google-beta.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withManagedServiceConfigs':: d.fn(help='`google-beta.list[obj].withManagedServiceConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the managed_service_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withManagedServiceConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `managed_service_configs` field.\n', args=[]),
  withManagedServiceConfigs(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          managed_service_configs: value,
        },
      },
    },
  },
  '#withManagedServiceConfigsMixin':: d.fn(help='`google-beta.list[obj].withManagedServiceConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the managed_service_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withManagedServiceConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `managed_service_configs` field.\n', args=[]),
  withManagedServiceConfigsMixin(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          managed_service_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOpenapiDocuments':: d.fn(help='`google-beta.list[obj].withOpenapiDocuments` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the openapi_documents field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google-beta.list[obj].withOpenapiDocumentsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `openapi_documents` field.\n', args=[]),
  withOpenapiDocuments(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          openapi_documents: value,
        },
      },
    },
  },
  '#withOpenapiDocumentsMixin':: d.fn(help='`google-beta.list[obj].withOpenapiDocumentsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the openapi_documents field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google-beta.list[obj].withOpenapiDocuments](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `openapi_documents` field.\n', args=[]),
  withOpenapiDocumentsMixin(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          openapi_documents+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google-beta.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google-beta.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google-beta.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google-beta.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google-beta.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}