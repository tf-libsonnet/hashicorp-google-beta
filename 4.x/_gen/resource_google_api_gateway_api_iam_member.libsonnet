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
    member,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_api_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      api=api,
      condition=condition,
      member=member,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    api,
    member,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    api: api,
    condition: condition,
    member: member,
    project: project,
    role: role,
  }),
  withApi(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_member+: {
        [resourceLabel]+: {
          api: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_api_gateway_api_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
