local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    workload_identity_pool_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_iam_workload_identity_pool',
    label=dataSrcLabel,
    attrs=self.newAttrs(project=project, workload_identity_pool_id=workload_identity_pool_id),
    _meta=_meta
  ),
  newAttrs(
    workload_identity_pool_id,
    project=null
  ):: std.prune(a={
    project: project,
    workload_identity_pool_id: workload_identity_pool_id,
  }),
  withProject(dataSrcLabel, value):: {
    data+: {
      google_iam_workload_identity_pool+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withWorkloadIdentityPoolId(dataSrcLabel, value):: {
    data+: {
      google_iam_workload_identity_pool+: {
        [dataSrcLabel]+: {
          workload_identity_pool_id: value,
        },
      },
    },
  },
}
