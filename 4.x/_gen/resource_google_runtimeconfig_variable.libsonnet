local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    parent,
    project=null,
    text=null,
    value=null,
    _meta={}
  ):: tf.withResource(
    type='google_runtimeconfig_variable',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      parent=parent,
      project=project,
      text=text,
      value=value
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    parent,
    project=null,
    text=null,
    value=null
  ):: std.prune(a={
    name: name,
    parent: parent,
    project: project,
    text: text,
    value: value,
  }),
  withName(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withText(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          text: value,
        },
      },
    },
  },
  withValue(resourceLabel, value):: {
    resource+: {
      google_runtimeconfig_variable+: {
        [resourceLabel]+: {
          value: value,
        },
      },
    },
  },
}
