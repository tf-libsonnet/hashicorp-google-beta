local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    taxonomy,
    description=null,
    parent_policy_tag=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_policy_tag',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      parent_policy_tag=parent_policy_tag,
      taxonomy=taxonomy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    taxonomy,
    description=null,
    parent_policy_tag=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    parent_policy_tag: parent_policy_tag,
    taxonomy: taxonomy,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withParentPolicyTag(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          parent_policy_tag: value,
        },
      },
    },
  },
  withTaxonomy(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          taxonomy: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
