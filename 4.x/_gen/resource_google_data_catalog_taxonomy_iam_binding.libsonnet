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
    role,
    taxonomy,
    condition=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_taxonomy_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      project=project,
      region=region,
      role=role,
      taxonomy=taxonomy
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    role,
    taxonomy,
    condition=null,
    project=null,
    region=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    project: project,
    region: region,
    role: role,
    taxonomy: taxonomy,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_binding+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTaxonomy(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy_iam_binding+: {
        [resourceLabel]+: {
          taxonomy: value,
        },
      },
    },
  },
}
