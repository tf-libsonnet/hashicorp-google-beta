local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    workload_identity_pool_id,
    workload_identity_pool_provider_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_iam_workload_identity_pool_provider',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, workload_identity_pool_id=workload_identity_pool_id, workload_identity_pool_provider_id=workload_identity_pool_provider_id),
    _meta=_meta
  ),
  newAttrs(
    workload_identity_pool_id,
    workload_identity_pool_provider_id,
    project=null
  ):: std.prune(a={
    project: project,
    workload_identity_pool_id: workload_identity_pool_id,
    workload_identity_pool_provider_id: workload_identity_pool_provider_id,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_iam_workload_identity_pool_provider+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withWorkloadIdentityPoolId(dataSrcLabel, value):: {
    data+: {
      google_iam_workload_identity_pool_provider+: {
        [dataSrcLabel]+: {
          workload_identity_pool_id: value,
        },
      },
    },
  },
  withWorkloadIdentityPoolProviderId(dataSrcLabel, value):: {
    data+: {
      google_iam_workload_identity_pool_provider+: {
        [dataSrcLabel]+: {
          workload_identity_pool_provider_id: value,
        },
      },
    },
  },
}
