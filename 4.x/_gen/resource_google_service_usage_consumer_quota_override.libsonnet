local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    limit,
    metric,
    override_value,
    service,
    dimensions=null,
    force=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_usage_consumer_quota_override',
    label=resourceLabel,
    attrs=self.newAttrs(
      dimensions=dimensions,
      force=force,
      limit=limit,
      metric=metric,
      override_value=override_value,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    limit,
    metric,
    override_value,
    service,
    dimensions=null,
    force=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    dimensions: dimensions,
    force: force,
    limit: limit,
    metric: metric,
    override_value: override_value,
    project: project,
    service: service,
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
  withDimensions(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          dimensions: value,
        },
      },
    },
  },
  withForce(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          force: value,
        },
      },
    },
  },
  withLimit(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          limit: value,
        },
      },
    },
  },
  withMetric(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          metric: value,
        },
      },
    },
  },
  withOverrideValue(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          override_value: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_usage_consumer_quota_override+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
