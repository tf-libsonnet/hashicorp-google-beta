local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  automated_backup_policy:: {
    new(
      backup_window=null,
      enabled=null,
      labels=null,
      location=null,
      quantity_based_retention=null,
      time_based_retention=null,
      weekly_schedule=null
    ):: std.prune(a={
      backup_window: backup_window,
      enabled: enabled,
      labels: labels,
      location: location,
      quantity_based_retention: quantity_based_retention,
      time_based_retention: time_based_retention,
      weekly_schedule: weekly_schedule,
    }),
    quantity_based_retention:: {
      new(
        count=null
      ):: std.prune(a={
        count: count,
      }),
    },
    time_based_retention:: {
      new(
        retention_period=null
      ):: std.prune(a={
        retention_period: retention_period,
      }),
    },
    weekly_schedule:: {
      new(
        days_of_week=null,
        start_times=null
      ):: std.prune(a={
        days_of_week: days_of_week,
        start_times: start_times,
      }),
      start_times:: {
        new(
          hours=null,
          minutes=null,
          nanos=null,
          seconds=null
        ):: std.prune(a={
          hours: hours,
          minutes: minutes,
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
  },
  initial_user:: {
    new(
      password,
      user=null
    ):: std.prune(a={
      password: password,
      user: user,
    }),
  },
  new(
    resourceLabel,
    cluster_id,
    network,
    automated_backup_policy=null,
    display_name=null,
    initial_user=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      automated_backup_policy=automated_backup_policy,
      cluster_id=cluster_id,
      display_name=display_name,
      initial_user=initial_user,
      labels=labels,
      location=location,
      network=network,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    network,
    automated_backup_policy=null,
    display_name=null,
    initial_user=null,
    labels=null,
    location=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    automated_backup_policy: automated_backup_policy,
    cluster_id: cluster_id,
    display_name: display_name,
    initial_user: initial_user,
    labels: labels,
    location: location,
    network: network,
    project: project,
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
  withAutomatedBackupPolicy(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          automated_backup_policy: value,
        },
      },
    },
  },
  withAutomatedBackupPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          automated_backup_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withClusterId(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withInitialUser(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          initial_user: value,
        },
      },
    },
  },
  withInitialUserMixin(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          initial_user+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
