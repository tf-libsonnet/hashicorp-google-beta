local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    api_config,
    gateway_id,
    display_name=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_gateway',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_config=api_config,
      display_name=display_name,
      gateway_id=gateway_id,
      labels=labels,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    api_config,
    gateway_id,
    display_name=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    api_config: api_config,
    display_name: display_name,
    gateway_id: gateway_id,
    labels: labels,
    project: project,
    region: region,
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
  withApiConfig(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway+: {
        [resourceLabel]+: {
          api_config: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withGatewayId(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway+: {
        [resourceLabel]+: {
          gateway_id: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
