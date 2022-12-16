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
    entitytype,
    featurestore,
    member,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore_entitytype_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      entitytype=entitytype,
      featurestore=featurestore,
      member=member,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    entitytype,
    featurestore,
    member,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    entitytype: entitytype,
    featurestore: featurestore,
    member: member,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEntitytype(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_member+: {
        [resourceLabel]+: {
          entitytype: value,
        },
      },
    },
  },
  withFeaturestore(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_member+: {
        [resourceLabel]+: {
          featurestore: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
