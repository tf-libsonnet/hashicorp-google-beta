local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    description=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_runtimeconfig_config',
    label=resourceLabel,
    attrs=self.newAttrs(description=description, name=name, project=project),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    project=null
  ):: std.prune(a={
    description: description,
    name: name,
    project: project,
  }),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}
