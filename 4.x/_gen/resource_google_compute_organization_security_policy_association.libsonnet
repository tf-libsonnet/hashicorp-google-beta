local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    attachment_id,
    name,
    policy_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_organization_security_policy_association',
    label=resourceLabel,
    attrs=self.newAttrs(
      attachment_id=attachment_id,
      name=name,
      policy_id=policy_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    attachment_id,
    name,
    policy_id,
    timeouts=null
  ):: std.prune(a={
    attachment_id: attachment_id,
    name: name,
    policy_id: policy_id,
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
  withAttachmentId(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_association+: {
        [resourceLabel]+: {
          attachment_id: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_association+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPolicyId(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_association+: {
        [resourceLabel]+: {
          policy_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_association+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_association+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
