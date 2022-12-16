local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    api_id,
    display_name=null,
    labels=null,
    managed_service=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_api',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_id=api_id,
      display_name=display_name,
      labels=labels,
      managed_service=managed_service,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    api_id,
    display_name=null,
    labels=null,
    managed_service=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    api_id: api_id,
    display_name: display_name,
    labels: labels,
    managed_service: managed_service,
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
  withApiId(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api+: {
        [resourceLabel]+: {
          api_id: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withManagedService(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api+: {
        [resourceLabel]+: {
          managed_service: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
