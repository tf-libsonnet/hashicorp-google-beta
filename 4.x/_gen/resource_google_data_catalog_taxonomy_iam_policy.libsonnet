local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    taxonomy,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_taxonomy_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      policy_data=policy_data,
      project=project,
      region=region,
      taxonomy=taxonomy
    ),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    taxonomy,
    project=null,
    region=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    region: region,
    taxonomy: taxonomy,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTaxonomy(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_policy+: {
        [resourceLabel]+: {
          taxonomy: value,
        },
      },
    },
  },
}
