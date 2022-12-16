local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    endpoint_id,
    service,
    address=null,
    metadata=null,
    network=null,
    port=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_directory_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      address=address,
      endpoint_id=endpoint_id,
      metadata=metadata,
      network=network,
      port=port,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    endpoint_id,
    service,
    address=null,
    metadata=null,
    network=null,
    port=null,
    timeouts=null
  ):: std.prune(a={
    address: address,
    endpoint_id: endpoint_id,
    metadata: metadata,
    network: network,
    port: port,
    service: service,
    timeouts: timeouts,
  }),
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
  withAddress(resourceLabel, value):: {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          address: value,
        },
      },
    },
  },
  withEndpointId(resourceLabel, value):: {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          endpoint_id: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withPort(resourceLabel, value):: {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_directory_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
