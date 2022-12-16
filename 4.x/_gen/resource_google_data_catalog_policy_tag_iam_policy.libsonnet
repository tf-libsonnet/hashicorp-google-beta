local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    policy_tag,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_policy_tag_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, policy_tag=policy_tag),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    policy_tag
  ):: std.prune(a={
    policy_data: policy_data,
    policy_tag: policy_tag,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withPolicyTag(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_policy+: {
        [resourceLabel]+: {
          policy_tag: value,
        },
      },
    },
  },
}
