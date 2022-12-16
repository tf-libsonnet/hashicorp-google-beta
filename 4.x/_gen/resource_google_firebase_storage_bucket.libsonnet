local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket_id=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebase_storage_bucket',
    label=resourceLabel,
    attrs=self.newAttrs(bucket_id=bucket_id, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    bucket_id=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bucket_id: bucket_id,
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
  withBucketId(resourceLabel, value):: {
    resource+: {
      google_firebase_storage_bucket+: {
        [resourceLabel]+: {
          bucket_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebase_storage_bucket+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebase_storage_bucket+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebase_storage_bucket+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
