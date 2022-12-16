local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    data_policy_id,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_datapolicy_data_policy_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      data_policy_id=data_policy_id,
      location=location,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    data_policy_id,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    data_policy_id: data_policy_id,
    location: location,
    policy_data: policy_data,
    project: project,
  }),
  withDataPolicyId(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy_iam_policy+: {
        [resourceLabel]+: {
          data_policy_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_datapolicy_data_policy_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
