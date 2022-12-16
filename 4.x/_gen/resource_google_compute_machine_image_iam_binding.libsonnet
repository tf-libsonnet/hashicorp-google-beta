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
    members,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_machine_image_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      machine_image=machine_image,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    machine_image,
    members,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    machine_image: machine_image,
    members: members,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMachineImage(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_binding+: {
        [resourceLabel]+: {
          machine_image: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_compute_machine_image_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
