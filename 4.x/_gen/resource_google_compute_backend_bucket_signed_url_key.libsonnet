local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    backend_bucket,
    key_value,
    name,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_backend_bucket_signed_url_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      backend_bucket=backend_bucket,
      key_value=key_value,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    backend_bucket,
    key_value,
    name,
    project=null,
    timeouts=null
  ):: std.prune(a={
    backend_bucket: backend_bucket,
    key_value: key_value,
    name: name,
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
  withBackendBucket(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket_signed_url_key+: {
        [resourceLabel]+: {
          backend_bucket: value,
        },
      },
    },
  },
  withKeyValue(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket_signed_url_key+: {
        [resourceLabel]+: {
          key_value: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket_signed_url_key+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket_signed_url_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket_signed_url_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_backend_bucket_signed_url_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
