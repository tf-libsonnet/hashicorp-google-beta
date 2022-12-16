local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  match:: {
    config:: {
      layer4_config:: {
        new(
          ip_protocol,
          ports=null
        ):: std.prune(a={
          ip_protocol: ip_protocol,
          ports: ports,
        }),
      },
      new(
        dest_ip_ranges=null,
        layer4_config=null,
        src_ip_ranges=null
      ):: std.prune(a={
        dest_ip_ranges: dest_ip_ranges,
        layer4_config: layer4_config,
        src_ip_ranges: src_ip_ranges,
      }),
    },
    new(
      config=null,
      description=null,
      versioned_expr=null
    ):: std.prune(a={
      config: config,
      description: description,
      versioned_expr: versioned_expr,
    }),
  },
  new(
    resourceLabel,
    action,
    policy_id,
    priority,
    description=null,
    direction=null,
    enable_logging=null,
    match=null,
    preview=null,
    target_resources=null,
    target_service_accounts=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_organization_security_policy_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      direction=direction,
      enable_logging=enable_logging,
      match=match,
      policy_id=policy_id,
      preview=preview,
      priority=priority,
      target_resources=target_resources,
      target_service_accounts=target_service_accounts,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    action,
    policy_id,
    priority,
    description=null,
    direction=null,
    enable_logging=null,
    match=null,
    preview=null,
    target_resources=null,
    target_service_accounts=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    direction: direction,
    enable_logging: enable_logging,
    match: match,
    policy_id: policy_id,
    preview: preview,
    priority: priority,
    target_resources: target_resources,
    target_service_accounts: target_service_accounts,
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
  withAction(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDirection(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          direction: value,
        },
      },
    },
  },
  withEnableLogging(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  withMatch(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          match: value,
        },
      },
    },
  },
  withMatchMixin(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          match+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPolicyId(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          policy_id: value,
        },
      },
    },
  },
  withPreview(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          preview: value,
        },
      },
    },
  },
  withPriority(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  withTargetResources(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          target_resources: value,
        },
      },
    },
  },
  withTargetServiceAccounts(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          target_service_accounts: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_organization_security_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
