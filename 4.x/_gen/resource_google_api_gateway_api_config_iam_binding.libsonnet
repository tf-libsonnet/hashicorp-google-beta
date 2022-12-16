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
    api,
    api_config,
    members,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_api_config_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      api=api,
      api_config=api_config,
      condition=condition,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    api,
    api_config,
    members,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    api: api,
    api_config: api_config,
    condition: condition,
    members: members,
    project: project,
    role: role,
  }),
  withApi(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_binding+: {
        [resourceLabel]+: {
          api: value,
        },
      },
    },
  },
  withApiConfig(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_binding+: {
        [resourceLabel]+: {
          api_config: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_config_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
