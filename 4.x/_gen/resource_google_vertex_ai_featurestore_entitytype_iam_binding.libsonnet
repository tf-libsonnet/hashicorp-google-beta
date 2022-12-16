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
    members,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore_entitytype_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      entitytype=entitytype,
      featurestore=featurestore,
      members=members,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    entitytype,
    featurestore,
    members,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    entitytype: entitytype,
    featurestore: featurestore,
    members: members,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEntitytype(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_binding+: {
        [resourceLabel]+: {
          entitytype: value,
        },
      },
    },
  },
  withFeaturestore(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_binding+: {
        [resourceLabel]+: {
          featurestore: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
