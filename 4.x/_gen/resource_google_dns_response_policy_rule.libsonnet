local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  local_data:: {
    local_datas:: {
      new(
        name,
        type,
        rrdatas=null,
        ttl=null
      ):: std.prune(a={
        name: name,
        rrdatas: rrdatas,
        ttl: ttl,
        type: type,
      }),
    },
    new(
      local_datas=null
    ):: std.prune(a={
      local_datas: local_datas,
    }),
  },
  new(
    resourceLabel,
    dns_name,
    response_policy,
    rule_name,
    behavior=null,
    local_data=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_response_policy_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      behavior=behavior,
      dns_name=dns_name,
      local_data=local_data,
      project=project,
      response_policy=response_policy,
      rule_name=rule_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    dns_name,
    response_policy,
    rule_name,
    behavior=null,
    local_data=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    behavior: behavior,
    dns_name: dns_name,
    local_data: local_data,
    project: project,
    response_policy: response_policy,
    rule_name: rule_name,
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
  withBehavior(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          behavior: value,
        },
      },
    },
  },
  withDnsName(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          dns_name: value,
        },
      },
    },
  },
  withLocalData(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          local_data: value,
        },
      },
    },
  },
  withLocalDataMixin(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          local_data+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withResponsePolicy(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          response_policy: value,
        },
      },
    },
  },
  withRuleName(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          rule_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dns_response_policy_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
