local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    featurestore,
    policy_data,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      featurestore=featurestore,
      policy_data=policy_data,
      project=project,
      region=region
    ),
    _meta=_meta
  ),
  newAttrs(
    featurestore,
    policy_data,
    project=null,
    region=null
  ):: std.prune(a={
    featurestore: featurestore,
    policy_data: policy_data,
    project: project,
    region: region,
  }),
  withFeaturestore(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_iam_policy+: {
        [resourceLabel]+: {
          featurestore: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
}
