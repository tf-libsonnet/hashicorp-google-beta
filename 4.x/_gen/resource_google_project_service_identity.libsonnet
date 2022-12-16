local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    service,
    email=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_service_identity',
    label=resourceLabel,
    attrs=self.newAttrs(
      email=email,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    service,
    email=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    email: email,
    project: project,
    service: service,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      read=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
    }),
  },
  withEmail(resourceLabel, value):: {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          email: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project_service_identity+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
