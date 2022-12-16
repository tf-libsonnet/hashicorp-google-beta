local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    federation_id,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_metastore_federation_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      federation_id=federation_id,
      location=location,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    federation_id,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    federation_id: federation_id,
    location: location,
    policy_data: policy_data,
    project: project,
  }),
  withFederationId(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation_iam_policy+: {
        [resourceLabel]+: {
          federation_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
