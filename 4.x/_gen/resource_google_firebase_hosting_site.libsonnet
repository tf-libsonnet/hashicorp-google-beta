local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    app_id=null,
    project=null,
    site_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_hosting_site',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_id=app_id,
      project=project,
      site_id=site_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    app_id=null,
    project=null,
    site_id=null,
    timeouts=null
  ):: std.prune(a={
    app_id: app_id,
    project: project,
    site_id: site_id,
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
  withAppId(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_site+: {
        [resourceLabel]+: {
          app_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_site+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSiteId(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_site+: {
        [resourceLabel]+: {
          site_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_site+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_site+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
