local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    channel_id,
    site_id,
    expire_time=null,
    labels=null,
    retained_release_count=null,
    timeouts=null,
    ttl=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_hosting_channel',
    label=resourceLabel,
    attrs=self.newAttrs(
      channel_id=channel_id,
      expire_time=expire_time,
      labels=labels,
      retained_release_count=retained_release_count,
      site_id=site_id,
      timeouts=timeouts,
      ttl=ttl
    ),
    _meta=_meta
  ),
  newAttrs(
    channel_id,
    site_id,
    expire_time=null,
    labels=null,
    retained_release_count=null,
    timeouts=null,
    ttl=null
  ):: std.prune(a={
    channel_id: channel_id,
    expire_time: expire_time,
    labels: labels,
    retained_release_count: retained_release_count,
    site_id: site_id,
    timeouts: timeouts,
    ttl: ttl,
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
  withChannelId(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          channel_id: value,
        },
      },
    },
  },
  withExpireTime(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          expire_time: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withRetainedReleaseCount(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          retained_release_count: value,
        },
      },
    },
  },
  withSiteId(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          site_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTtl(resourceLabel, value):: {
    resource+: {
      google_firebase_hosting_channel+: {
        [resourceLabel]+: {
          ttl: value,
        },
      },
    },
  },
}
