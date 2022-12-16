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
    config,
    members,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_runtimeconfig_config_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      config=config,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    config,
    members,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    config: config,
    members: members,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConfig(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_binding+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
