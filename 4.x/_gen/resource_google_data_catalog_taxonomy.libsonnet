local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    activated_policy_types=null,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_taxonomy',
    label=resourceLabel,
    attrs=self.newAttrs(
      activated_policy_types=activated_policy_types,
      description=description,
      display_name=display_name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    activated_policy_types=null,
    description=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    activated_policy_types: activated_policy_types,
    description: description,
    display_name: display_name,
    project: project,
    region: region,
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
  withActivatedPolicyTypes(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy+: {
        [resourceLabel]+: {
          activated_policy_types: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_taxonomy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
