local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    namespace,
    service_id,
    metadata=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_directory_service',
    label=resourceLabel,
    attrs=self.newAttrs(
      metadata=metadata,
      namespace=namespace,
      service_id=service_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    namespace,
    service_id,
    metadata=null,
    timeouts=null
  ):: std.prune(a={
    metadata: metadata,
    namespace: namespace,
    service_id: service_id,
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
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withNamespace(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          namespace: value,
        },
      },
    },
  },
  withServiceId(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          service_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_directory_service+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
