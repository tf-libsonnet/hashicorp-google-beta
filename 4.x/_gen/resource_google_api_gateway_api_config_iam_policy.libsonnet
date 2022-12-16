local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    api,
    api_config,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_api_config_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      api=api,
      api_config=api_config,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    api,
    api_config,
    policy_data,
    project=null
  ):: std.prune(a={
    api: api,
    api_config: api_config,
    policy_data: policy_data,
    project: project,
  }),
  withApi(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_policy+: {
        [resourceLabel]+: {
          api: value,
        },
      },
    },
  },
  withApiConfig(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_policy+: {
        [resourceLabel]+: {
          api_config: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
