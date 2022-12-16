local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  backup_config:: {
    encryption_key:: {
      new(
        gcp_kms_encryption_key
      ):: std.prune(a={
        gcp_kms_encryption_key: gcp_kms_encryption_key,
      }),
    },
    new(
      all_namespaces=null,
      encryption_key=null,
      include_secrets=null,
      include_volume_data=null,
      selected_applications=null,
      selected_namespaces=null
    ):: std.prune(a={
      all_namespaces: all_namespaces,
      encryption_key: encryption_key,
      include_secrets: include_secrets,
      include_volume_data: include_volume_data,
      selected_applications: selected_applications,
      selected_namespaces: selected_namespaces,
    }),
    selected_applications:: {
      namespaced_names:: {
        new(
          name,
          namespace
        ):: std.prune(a={
          name: name,
          namespace: namespace,
        }),
      },
      new(
        namespaced_names=null
      ):: std.prune(a={
        namespaced_names: namespaced_names,
      }),
    },
    selected_namespaces:: {
      new(
        namespaces
      ):: std.prune(a={
        namespaces: namespaces,
      }),
    },
  },
  backup_schedule:: {
    new(
      cron_schedule=null,
      paused=null
    ):: std.prune(a={
      cron_schedule: cron_schedule,
      paused: paused,
    }),
  },
  new(
    resourceLabel,
    cluster,
    location,
    name,
    backup_config=null,
    backup_schedule=null,
    deactivated=null,
    description=null,
    labels=null,
    project=null,
    retention_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_backup_backup_plan',
    label=resourceLabel,
    attrs=self.newAttrs(
      backup_config=backup_config,
      backup_schedule=backup_schedule,
      cluster=cluster,
      deactivated=deactivated,
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      retention_policy=retention_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster,
    location,
    name,
    backup_config=null,
    backup_schedule=null,
    deactivated=null,
    description=null,
    labels=null,
    project=null,
    retention_policy=null,
    timeouts=null
  ):: std.prune(a={
    backup_config: backup_config,
    backup_schedule: backup_schedule,
    cluster: cluster,
    deactivated: deactivated,
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    retention_policy: retention_policy,
    timeouts: timeouts,
  }),
  retention_policy:: {
    new(
      backup_delete_lock_days=null,
      backup_retain_days=null,
      locked=null
    ):: std.prune(a={
      backup_delete_lock_days: backup_delete_lock_days,
      backup_retain_days: backup_retain_days,
      locked: locked,
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
  withBackupConfig(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          backup_config: value,
        },
      },
    },
  },
  withBackupConfigMixin(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          backup_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBackupSchedule(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          backup_schedule: value,
        },
      },
    },
  },
  withBackupScheduleMixin(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          backup_schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCluster(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  withDeactivated(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          deactivated: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRetentionPolicy(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          retention_policy: value,
        },
      },
    },
  },
  withRetentionPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          retention_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_gke_backup_backup_plan+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
