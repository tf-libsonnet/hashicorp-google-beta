local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    attachment_target,
    firewall_policy,
    name,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_firewall_policy_association',
    label=resourceLabel,
    attrs=self.newAttrs(
      attachment_target=attachment_target,
      firewall_policy=firewall_policy,
      name=name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    attachment_target,
    firewall_policy,
    name,
    timeouts=null
  ):: std.prune(a={
    attachment_target: attachment_target,
    firewall_policy: firewall_policy,
    name: name,
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
  withAttachmentTarget(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          attachment_target: value,
        },
      },
    },
  },
  withFirewallPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          firewall_policy: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
