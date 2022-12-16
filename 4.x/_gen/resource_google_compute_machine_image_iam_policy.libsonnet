local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    machine_image,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_machine_image_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(machine_image=machine_image, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    machine_image,
    policy_data,
    project=null
  ):: std.prune(a={
    machine_image: machine_image,
    policy_data: policy_data,
    project: project,
  }),
  withMachineImage(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_policy+: {
        [resourceLabel]+: {
          machine_image: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
