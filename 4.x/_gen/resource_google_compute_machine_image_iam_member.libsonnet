local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  condition:: {
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  new(
    resourceLabel,
    machine_image,
    member,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_machine_image_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      machine_image=machine_image,
      member=member,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    machine_image,
    member,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    machine_image: machine_image,
    member: member,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMachineImage(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_member+: {
        [resourceLabel]+: {
          machine_image: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
