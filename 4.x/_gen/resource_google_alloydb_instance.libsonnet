local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  machine_config:: {
    new(
      cpu_count=null
    ):: std.prune(a={
      cpu_count: cpu_count,
    }),
  },
  new(
    resourceLabel,
    cluster,
    instance_id,
    instance_type,
    annotations=null,
    availability_type=null,
    database_flags=null,
    display_name=null,
    gce_zone=null,
    labels=null,
    machine_config=null,
    read_pool_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      availability_type=availability_type,
      cluster=cluster,
      database_flags=database_flags,
      display_name=display_name,
      gce_zone=gce_zone,
      instance_id=instance_id,
      instance_type=instance_type,
      labels=labels,
      machine_config=machine_config,
      read_pool_config=read_pool_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster,
    instance_id,
    instance_type,
    annotations=null,
    availability_type=null,
    database_flags=null,
    display_name=null,
    gce_zone=null,
    labels=null,
    machine_config=null,
    read_pool_config=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    availability_type: availability_type,
    cluster: cluster,
    database_flags: database_flags,
    display_name: display_name,
    gce_zone: gce_zone,
    instance_id: instance_id,
    instance_type: instance_type,
    labels: labels,
    machine_config: machine_config,
    read_pool_config: read_pool_config,
    timeouts: timeouts,
  }),
  read_pool_config:: {
    new(
      node_count=null
    ):: std.prune(a={
      node_count: node_count,
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
  withAnnotations(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  withAvailabilityType(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          availability_type: value,
        },
      },
    },
  },
  withCluster(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  withDatabaseFlags(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          database_flags: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withGceZone(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          gce_zone: value,
        },
      },
    },
  },
  withInstanceId(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          instance_id: value,
        },
      },
    },
  },
  withInstanceType(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          instance_type: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMachineConfig(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          machine_config: value,
        },
      },
    },
  },
  withMachineConfigMixin(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          machine_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withReadPoolConfig(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          read_pool_config: value,
        },
      },
    },
  },
  withReadPoolConfigMixin(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          read_pool_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_alloydb_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
