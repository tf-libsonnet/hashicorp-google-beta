local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    labels=null,
    name=null,
    project=null,
    spec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_feature',
    label=resourceLabel,
    attrs=self.newAttrs(
      labels=labels,
      location=location,
      name=name,
      project=project,
      spec=spec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    labels=null,
    name=null,
    project=null,
    spec=null,
    timeouts=null
  ):: std.prune(a={
    labels: labels,
    location: location,
    name: name,
    project: project,
    spec: spec,
    timeouts: timeouts,
  }),
  spec:: {
    multiclusteringress:: {
      new(
        config_membership
      ):: std.prune(a={
        config_membership: config_membership,
      }),
    },
    new(
      multiclusteringress=null
    ):: std.prune(a={
      multiclusteringress: multiclusteringress,
    }),
  },
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
  withLabels(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSpec(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          spec: value,
        },
      },
    },
  },
  withSpecMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
