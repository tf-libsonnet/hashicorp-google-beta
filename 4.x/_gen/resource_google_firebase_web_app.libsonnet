local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    deletion_policy=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_web_app',
    label=resourceLabel,
    attrs=self.newAttrs(
      deletion_policy=deletion_policy,
      display_name=display_name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    deletion_policy=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    deletion_policy: deletion_policy,
    display_name: display_name,
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
  withDeletionPolicy(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_web_app+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
