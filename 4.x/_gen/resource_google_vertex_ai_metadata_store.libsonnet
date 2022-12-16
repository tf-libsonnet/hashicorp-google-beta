local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  encryption_spec:: {
    new(
      kms_key_name=null
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  new(
    resourceLabel,
    description=null,
    encryption_spec=null,
    name=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_metadata_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      encryption_spec=encryption_spec,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    description=null,
    encryption_spec=null,
    name=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    encryption_spec: encryption_spec,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_metadata_store+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEncryptionSpec(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_metadata_store+: {
        [resourceLabel]+: {
          encryption_spec: value,
        },
      },
    },
  },
  withEncryptionSpecMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_metadata_store+: {
        [resourceLabel]+: {
          encryption_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_metadata_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_metadata_store+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_metadata_store+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_metadata_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_metadata_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
