local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    api,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_api_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(api=api, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    api,
    policy_data,
    project=null
  ):: std.prune(a={
    api: api,
    policy_data: policy_data,
    project: project,
  }),
  withApi(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_policy+: {
        [resourceLabel]+: {
          api: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
