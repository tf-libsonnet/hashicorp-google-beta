local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  advanced_machine_features:: {
    new(
      enable_nested_virtualization=null,
      threads_per_core=null,
      visible_core_count=null
    ):: std.prune(a={
      enable_nested_virtualization: enable_nested_virtualization,
      threads_per_core: threads_per_core,
      visible_core_count: visible_core_count,
    }),
  },
  confidential_instance_config:: {
    new(
      enable_confidential_compute
    ):: std.prune(a={
      enable_confidential_compute: enable_confidential_compute,
    }),
  },
  network_interface:: {
    ipv6_access_config:: {
      new(
        network_tier,
        public_ptr_domain_name=null
      ):: std.prune(a={
        network_tier: network_tier,
        public_ptr_domain_name: public_ptr_domain_name,
      }),
    },
    new(
      access_config=null,
      alias_ip_range=null,
      ipv6_access_config=null,
      network=null,
      network_ip=null,
      nic_type=null,
      queue_count=null,
      stack_type=null,
      subnetwork=null,
      subnetwork_project=null
    ):: std.prune(a={
      access_config: access_config,
      alias_ip_range: alias_ip_range,
      ipv6_access_config: ipv6_access_config,
      network: network,
      network_ip: network_ip,
      nic_type: nic_type,
      queue_count: queue_count,
      stack_type: stack_type,
      subnetwork: subnetwork,
      subnetwork_project: subnetwork_project,
    }),
  },
  network_performance_config:: {
    new(
      total_egress_bandwidth_tier
    ):: std.prune(a={
      total_egress_bandwidth_tier: total_egress_bandwidth_tier,
    }),
  },
  new(
    resourceLabel,
    name,
    source_machine_image,
    advanced_machine_features=null,
    allow_stopping_for_update=null,
    can_ip_forward=null,
    confidential_instance_config=null,
    deletion_protection=null,
    description=null,
    desired_status=null,
    enable_display=null,
    guest_accelerator=null,
    hostname=null,
    labels=null,
    machine_type=null,
    metadata=null,
    metadata_startup_script=null,
    min_cpu_platform=null,
    network_interface=null,
    network_performance_config=null,
    project=null,
    reservation_affinity=null,
    resource_policies=null,
    scheduling=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_from_machine_image',
    label=resourceLabel,
    attrs=self.newAttrs(
      advanced_machine_features=advanced_machine_features,
      allow_stopping_for_update=allow_stopping_for_update,
      can_ip_forward=can_ip_forward,
      confidential_instance_config=confidential_instance_config,
      deletion_protection=deletion_protection,
      description=description,
      desired_status=desired_status,
      enable_display=enable_display,
      guest_accelerator=guest_accelerator,
      hostname=hostname,
      labels=labels,
      machine_type=machine_type,
      metadata=metadata,
      metadata_startup_script=metadata_startup_script,
      min_cpu_platform=min_cpu_platform,
      name=name,
      network_interface=network_interface,
      network_performance_config=network_performance_config,
      project=project,
      reservation_affinity=reservation_affinity,
      resource_policies=resource_policies,
      scheduling=scheduling,
      service_account=service_account,
      shielded_instance_config=shielded_instance_config,
      source_machine_image=source_machine_image,
      tags=tags,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    source_machine_image,
    advanced_machine_features=null,
    allow_stopping_for_update=null,
    can_ip_forward=null,
    confidential_instance_config=null,
    deletion_protection=null,
    description=null,
    desired_status=null,
    enable_display=null,
    guest_accelerator=null,
    hostname=null,
    labels=null,
    machine_type=null,
    metadata=null,
    metadata_startup_script=null,
    min_cpu_platform=null,
    network_interface=null,
    network_performance_config=null,
    project=null,
    reservation_affinity=null,
    resource_policies=null,
    scheduling=null,
    service_account=null,
    shielded_instance_config=null,
    tags=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    advanced_machine_features: advanced_machine_features,
    allow_stopping_for_update: allow_stopping_for_update,
    can_ip_forward: can_ip_forward,
    confidential_instance_config: confidential_instance_config,
    deletion_protection: deletion_protection,
    description: description,
    desired_status: desired_status,
    enable_display: enable_display,
    guest_accelerator: guest_accelerator,
    hostname: hostname,
    labels: labels,
    machine_type: machine_type,
    metadata: metadata,
    metadata_startup_script: metadata_startup_script,
    min_cpu_platform: min_cpu_platform,
    name: name,
    network_interface: network_interface,
    network_performance_config: network_performance_config,
    project: project,
    reservation_affinity: reservation_affinity,
    resource_policies: resource_policies,
    scheduling: scheduling,
    service_account: service_account,
    shielded_instance_config: shielded_instance_config,
    source_machine_image: source_machine_image,
    tags: tags,
    timeouts: timeouts,
    zone: zone,
  }),
  reservation_affinity:: {
    new(
      type,
      specific_reservation=null
    ):: std.prune(a={
      specific_reservation: specific_reservation,
      type: type,
    }),
    specific_reservation:: {
      new(
        key,
        values
      ):: std.prune(a={
        key: key,
        values: values,
      }),
    },
  },
  scheduling:: {
    new(
      automatic_restart=null,
      instance_termination_action=null,
      min_node_cpus=null,
      node_affinities=null,
      on_host_maintenance=null,
      preemptible=null,
      provisioning_model=null
    ):: std.prune(a={
      automatic_restart: automatic_restart,
      instance_termination_action: instance_termination_action,
      min_node_cpus: min_node_cpus,
      node_affinities: node_affinities,
      on_host_maintenance: on_host_maintenance,
      preemptible: preemptible,
      provisioning_model: provisioning_model,
    }),
    node_affinities:: {
      new(
        key,
        operator,
        values
      ):: std.prune(a={
        key: key,
        operator: operator,
        values: values,
      }),
    },
  },
  shielded_instance_config:: {
    new(
      enable_integrity_monitoring=null,
      enable_secure_boot=null,
      enable_vtpm=null
    ):: std.prune(a={
      enable_integrity_monitoring: enable_integrity_monitoring,
      enable_secure_boot: enable_secure_boot,
      enable_vtpm: enable_vtpm,
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
  withAdvancedMachineFeatures(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          advanced_machine_features: value,
        },
      },
    },
  },
  withAdvancedMachineFeaturesMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          advanced_machine_features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAllowStoppingForUpdate(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          allow_stopping_for_update: value,
        },
      },
    },
  },
  withCanIpForward(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          can_ip_forward: value,
        },
      },
    },
  },
  withConfidentialInstanceConfig(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          confidential_instance_config: value,
        },
      },
    },
  },
  withConfidentialInstanceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          confidential_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDeletionProtection(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDesiredStatus(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          desired_status: value,
        },
      },
    },
  },
  withEnableDisplay(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          enable_display: value,
        },
      },
    },
  },
  withGuestAccelerator(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          guest_accelerator: value,
        },
      },
    },
  },
  withHostname(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          hostname: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMachineType(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withMetadataStartupScript(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          metadata_startup_script: value,
        },
      },
    },
  },
  withMinCpuPlatform(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          min_cpu_platform: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetworkInterface(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          network_interface: value,
        },
      },
    },
  },
  withNetworkInterfaceMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          network_interface+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNetworkPerformanceConfig(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          network_performance_config: value,
        },
      },
    },
  },
  withNetworkPerformanceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          network_performance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReservationAffinity(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          reservation_affinity: value,
        },
      },
    },
  },
  withReservationAffinityMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          reservation_affinity+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withResourcePolicies(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          resource_policies: value,
        },
      },
    },
  },
  withScheduling(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          scheduling: value,
        },
      },
    },
  },
  withSchedulingMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          scheduling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withServiceAccount(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  withShieldedInstanceConfig(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          shielded_instance_config: value,
        },
      },
    },
  },
  withShieldedInstanceConfigMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          shielded_instance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSourceMachineImage(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          source_machine_image: value,
        },
      },
    },
  },
  withTags(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_instance_from_machine_image+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}
