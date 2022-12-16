local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    app_store_id=null,
    bundle_id=null,
    deletion_policy=null,
    project=null,
    team_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_apple_app',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_store_id=app_store_id,
      bundle_id=bundle_id,
      deletion_policy=deletion_policy,
      display_name=display_name,
      project=project,
      team_id=team_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    app_store_id=null,
    bundle_id=null,
    deletion_policy=null,
    project=null,
    team_id=null,
    timeouts=null
  ):: std.prune(a={
    app_store_id: app_store_id,
    bundle_id: bundle_id,
    deletion_policy: deletion_policy,
    display_name: display_name,
    project: project,
    team_id: team_id,
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
  withAppStoreId(resourceLabel, value):: {
    resource+: {
      google_firebase_apple_app+: {
        [resourceLabel]+: {
          app_store_id: value,
        },
      },
    },
  },
  withBundleId(resourceLabel, value):: {
    resource+: {
      google_firebase_apple_app+: {
        [resourceLabel]+: {
          bundle_id: value,
        },
      },
    },
  },
  withDeletionPolicy(resourceLabel, value):: {
    resource+: {
      google_firebase_apple_app+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_firebase_apple_app+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebase_apple_app+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTeamId(resourceLabel, value):: {
    resource+: {
      google_firebase_apple_app+: {
        [resourceLabel]+: {
          team_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_apple_app+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_apple_app+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
