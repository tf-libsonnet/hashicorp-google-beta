local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  backend_metastores:: {
    new(
      metastore_type,
      name,
      rank
    ):: std.prune(a={
      metastore_type: metastore_type,
      name: name,
      rank: rank,
    }),
  },
  new(
    resourceLabel,
    federation_id,
    version,
    backend_metastores=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_metastore_federation',
    label=resourceLabel,
    attrs=self.newAttrs(
      backend_metastores=backend_metastores,
      federation_id=federation_id,
      labels=labels,
      location=location,
      project=project,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  newAttrs(
    federation_id,
    version,
    backend_metastores=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    backend_metastores: backend_metastores,
    federation_id: federation_id,
    labels: labels,
    location: location,
    project: project,
    timeouts: timeouts,
    version: version,
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
  withBackendMetastores(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          backend_metastores: value,
        },
      },
    },
  },
  withBackendMetastoresMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          backend_metastores+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withFederationId(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          federation_id: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_federation+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
