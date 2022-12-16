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
    member,
    policy_tag,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_policy_tag_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      policy_tag=policy_tag,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    policy_tag,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    policy_tag: policy_tag,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withPolicyTag(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_member+: {
        [resourceLabel]+: {
          policy_tag: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
