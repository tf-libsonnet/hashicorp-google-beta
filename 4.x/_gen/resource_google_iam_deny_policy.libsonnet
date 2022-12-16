local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    parent,
    display_name=null,
    rules=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_deny_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      name=name,
      parent=parent,
      rules=rules,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    parent,
    display_name=null,
    rules=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    name: name,
    parent: parent,
    rules: rules,
    timeouts: timeouts,
  }),
  rules:: {
    deny_rule:: {
      denial_condition:: {
        new(
          expression,
          description=null,
          location=null,
          title=null
        ):: std.prune(a={
          description: description,
          expression: expression,
          location: location,
          title: title,
        }),
      },
      new(
        denial_condition=null,
        denied_permissions=null,
        denied_principals=null,
        exception_permissions=null,
        exception_principals=null
      ):: std.prune(a={
        denial_condition: denial_condition,
        denied_permissions: denied_permissions,
        denied_principals: denied_principals,
        exception_permissions: exception_permissions,
        exception_principals: exception_principals,
      }),
    },
    new(
      deny_rule=null,
      description=null
    ):: std.prune(a={
      deny_rule: deny_rule,
      description: description,
    }),
  },
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withRules(resourceLabel, value):: {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          rules: value,
        },
      },
    },
  },
  withRulesMixin(resourceLabel, value):: {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_iam_deny_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
