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
    members,
    policy_tag,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_policy_tag_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      policy_tag=policy_tag,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    policy_tag,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    policy_tag: policy_tag,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withPolicyTag(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_binding+: {
        [resourceLabel]+: {
          policy_tag: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
