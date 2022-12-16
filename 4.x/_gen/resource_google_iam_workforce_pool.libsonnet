local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    parent,
    workforce_pool_id,
    description=null,
    disabled=null,
    display_name=null,
    session_duration=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_iam_workforce_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disabled=disabled,
      display_name=display_name,
      location=location,
      parent=parent,
      session_duration=session_duration,
      timeouts=timeouts,
      workforce_pool_id=workforce_pool_id
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    parent,
    workforce_pool_id,
    description=null,
    disabled=null,
    display_name=null,
    session_duration=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    disabled: disabled,
    display_name: display_name,
    location: location,
    parent: parent,
    session_duration: session_duration,
    timeouts: timeouts,
    workforce_pool_id: workforce_pool_id,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withSessionDuration(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          session_duration: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWorkforcePoolId(resourceLabel, value):: {
    resource+: {
      google_iam_workforce_pool+: {
        [resourceLabel]+: {
          workforce_pool_id: value,
        },
      },
    },
  },
}
