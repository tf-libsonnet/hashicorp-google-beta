local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    parent,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_runtimeconfig_variable',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name, parent=parent, project=project),
    _meta=_meta
  ),
  newAttrs(
    name,
    parent,
    project=null
  ):: std.prune(a={
    name: name,
    parent: parent,
    project: project,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_runtimeconfig_variable+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withParent(dataSrcLabel, value):: {
    data+: {
      google_runtimeconfig_variable+: {
        [dataSrcLabel]+: {
          parent: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_runtimeconfig_variable+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
