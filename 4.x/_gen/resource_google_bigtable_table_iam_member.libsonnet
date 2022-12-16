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
    instance,
    member,
    role,
    table,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_table_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      instance=instance,
      member=member,
      project=project,
      role=role,
      table=table
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    member,
    role,
    table,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    instance: instance,
    member: member,
    project: project,
    role: role,
    table: table,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_member+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTable(resourceLabel, value):: {
    resource+: {
      google_bigtable_table_iam_member+: {
        [resourceLabel]+: {
          table: value,
        },
      },
    },
  },
}
