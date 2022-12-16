local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  gateway_config:: {
    backend_config:: {
      new(
        google_service_account
      ):: std.prune(a={
        google_service_account: google_service_account,
      }),
    },
    new(
      backend_config=null
    ):: std.prune(a={
      backend_config: backend_config,
    }),
  },
  grpc_services:: {
    file_descriptor_set:: {
      new(
        contents,
        path
      ):: std.prune(a={
        contents: contents,
        path: path,
      }),
    },
    new(
      file_descriptor_set=null,
      source=null
    ):: std.prune(a={
      file_descriptor_set: file_descriptor_set,
      source: source,
    }),
    source:: {
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
    new(
      contents,
      path
    ):: std.prune(a={
      contents: contents,
      path: path,
    }),
  },
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
      new(
        contents,
        path
      ):: std.prune(a={
        contents: contents,
        path: path,
      }),
    },
    new(
      document=null
    ):: std.prune(a={
      document: document,
    }),
  },
  timeouts:: {
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
  withApi(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          api: value,
        },
      },
    },
  },
  withApiConfigId(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          api_config_id: value,
        },
      },
    },
  },
  withApiConfigIdPrefix(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          api_config_id_prefix: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withGatewayConfig(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          gateway_config: value,
        },
      },
    },
  },
  withGatewayConfigMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          gateway_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGrpcServices(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          grpc_services: value,
        },
      },
    },
  },
  withGrpcServicesMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          grpc_services+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withManagedServiceConfigs(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          managed_service_configs: value,
        },
      },
    },
  },
  withManagedServiceConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          managed_service_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withOpenapiDocuments(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          openapi_documents: value,
        },
      },
    },
  },
  withOpenapiDocumentsMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          openapi_documents+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
