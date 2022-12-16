local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    entitytype,
    featurestore,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore_entitytype_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(entitytype=entitytype, featurestore=featurestore, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    entitytype,
    featurestore,
    policy_data
  ):: std.prune(a={
    entitytype: entitytype,
    featurestore: featurestore,
    policy_data: policy_data,
  }),
  withEntitytype(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_policy+: {
        [resourceLabel]+: {
          entitytype: value,
        },
      },
    },
  },
  withFeaturestore(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_policy+: {
        [resourceLabel]+: {
          featurestore: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}
