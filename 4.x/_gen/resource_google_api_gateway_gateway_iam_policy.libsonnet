local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    gateway,
    policy_data,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_gateway_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      gateway=gateway,
      policy_data=policy_data,
      project=project,
      region=region
    ),
    _meta=_meta
  ),
  newAttrs(
    gateway,
    policy_data,
    project=null,
    region=null
  ):: std.prune(a={
    gateway: gateway,
    policy_data: policy_data,
    project: project,
    region: region,
  }),
  withGateway(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_policy+: {
        [resourceLabel]+: {
          gateway: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
}
