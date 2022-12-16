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
    instance,
    members,
    role,
    condition=null,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_tunnel_instance_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      instance=instance,
      members=members,
      project=project,
      role=role,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    members,
    role,
    condition=null,
    project=null,
    zone=null
  ):: std.prune(a={
    condition: condition,
    instance: instance,
    members: members,
    project: project,
    role: role,
    zone: zone,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_binding+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_binding+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
