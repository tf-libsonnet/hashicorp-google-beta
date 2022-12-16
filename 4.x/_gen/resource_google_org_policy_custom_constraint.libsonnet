local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    action_type,
    condition,
    method_types,
    name,
    parent,
    resource_types,
    description=null,
    display_name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_org_policy_custom_constraint',
    label=resourceLabel,
    attrs=self.newAttrs(
      action_type=action_type,
      condition=condition,
      description=description,
      display_name=display_name,
      method_types=method_types,
      name=name,
      parent=parent,
      resource_types=resource_types,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    action_type,
    condition,
    method_types,
    name,
    parent,
    resource_types,
    description=null,
    display_name=null,
    timeouts=null
  ):: std.prune(a={
    action_type: action_type,
    condition: condition,
    description: description,
    display_name: display_name,
    method_types: method_types,
    name: name,
    parent: parent,
    resource_types: resource_types,
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
  withActionType(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          action_type: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withMethodTypes(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          method_types: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withResourceTypes(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          resource_types: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_org_policy_custom_constraint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
