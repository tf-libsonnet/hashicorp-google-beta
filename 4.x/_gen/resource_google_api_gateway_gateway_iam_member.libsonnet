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
    gateway,
    member,
    role,
    condition=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_api_gateway_gateway_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      gateway=gateway,
      member=member,
      project=project,
      region=region,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    gateway,
    member,
    role,
    condition=null,
    project=null,
    region=null
  ):: std.prune(a={
    condition: condition,
    gateway: gateway,
    member: member,
    project: project,
    region: region,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGateway(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_member+: {
        [resourceLabel]+: {
          gateway: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_member+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_api_gateway_gateway_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
