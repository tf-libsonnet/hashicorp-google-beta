local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    config,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_runtimeconfig_config_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(config=config, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    config,
    policy_data,
    project=null
  ):: std.prune(a={
    config: config,
    policy_data: policy_data,
    project: project,
  }),
  withConfig(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_policy+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
