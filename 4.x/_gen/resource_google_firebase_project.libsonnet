local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_project',
    label=resourceLabel,
    attrs=self.newAttrs(project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    project=null,
    timeouts=null
  ):: std.prune(a={
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebase_project+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_project+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_project+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
