local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location_id,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_project_location',
    label=resourceLabel,
    attrs=self.newAttrs(location_id=location_id, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    location_id,
    project=null,
    timeouts=null
  ):: std.prune(a={
    location_id: location_id,
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
  withLocationId(resourceLabel, value):: {
    resource+: {
      google_firebase_project_location+: {
        [resourceLabel]+: {
          location_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebase_project_location+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_project_location+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_project_location+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
