local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    namespace_id,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_directory_namespace',
    label=resourceLabel,
    attrs=self.newAttrs(
      labels=labels,
      location=location,
      namespace_id=namespace_id,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    namespace_id,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    labels: labels,
    location: location,
    namespace_id: namespace_id,
    project: project,
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
  withLabels(resourceLabel, value):: {
    resource+: {
      google_service_directory_namespace+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_service_directory_namespace+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withNamespaceId(resourceLabel, value):: {
    resource+: {
      google_service_directory_namespace+: {
        [resourceLabel]+: {
          namespace_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_service_directory_namespace+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_directory_namespace+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_directory_namespace+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
