local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  configmanagement:: {
    binauthz:: {
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    config_sync:: {
      git:: {
        new(
          gcp_service_account_email=null,
          https_proxy=null,
          policy_dir=null,
          secret_type=null,
          sync_branch=null,
          sync_repo=null,
          sync_rev=null,
          sync_wait_secs=null
        ):: std.prune(a={
          gcp_service_account_email: gcp_service_account_email,
          https_proxy: https_proxy,
          policy_dir: policy_dir,
          secret_type: secret_type,
          sync_branch: sync_branch,
          sync_repo: sync_repo,
          sync_rev: sync_rev,
          sync_wait_secs: sync_wait_secs,
        }),
      },
      new(
        git=null,
        prevent_drift=null,
        source_format=null
      ):: std.prune(a={
        git: git,
        prevent_drift: prevent_drift,
        source_format: source_format,
      }),
    },
    hierarchy_controller:: {
      new(
        enable_hierarchical_resource_quota=null,
        enable_pod_tree_labels=null,
        enabled=null
      ):: std.prune(a={
        enable_hierarchical_resource_quota: enable_hierarchical_resource_quota,
        enable_pod_tree_labels: enable_pod_tree_labels,
        enabled: enabled,
      }),
    },
    new(
      binauthz=null,
      config_sync=null,
      hierarchy_controller=null,
      policy_controller=null,
      version=null
    ):: std.prune(a={
      binauthz: binauthz,
      config_sync: config_sync,
      hierarchy_controller: hierarchy_controller,
      policy_controller: policy_controller,
      version: version,
    }),
    policy_controller:: {
      monitoring:: {
        new(
          backends=null
        ):: std.prune(a={
          backends: backends,
        }),
      },
      new(
        audit_interval_seconds=null,
        enabled=null,
        exemptable_namespaces=null,
        log_denies_enabled=null,
        monitoring=null,
        mutation_enabled=null,
        referential_rules_enabled=null,
        template_library_installed=null
      ):: std.prune(a={
        audit_interval_seconds: audit_interval_seconds,
        enabled: enabled,
        exemptable_namespaces: exemptable_namespaces,
        log_denies_enabled: log_denies_enabled,
        monitoring: monitoring,
        mutation_enabled: mutation_enabled,
        referential_rules_enabled: referential_rules_enabled,
        template_library_installed: template_library_installed,
      }),
    },
  },
  mesh:: {
    new(
      control_plane=null,
      management=null
    ):: std.prune(a={
      control_plane: control_plane,
      management: management,
    }),
  },
  new(
    resourceLabel,
    feature,
    location,
    membership,
    configmanagement=null,
    mesh=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_feature_membership',
    label=resourceLabel,
    attrs=self.newAttrs(
      configmanagement=configmanagement,
      feature=feature,
      location=location,
      membership=membership,
      mesh=mesh,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    feature,
    location,
    membership,
    configmanagement=null,
    mesh=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    configmanagement: configmanagement,
    feature: feature,
    location: location,
    membership: membership,
    mesh: mesh,
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
  withConfigmanagement(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          configmanagement: value,
        },
      },
    },
  },
  withConfigmanagementMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          configmanagement+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withFeature(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          feature: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMembership(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          membership: value,
        },
      },
    },
  },
  withMesh(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          mesh: value,
        },
      },
    },
  },
  withMeshMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          mesh+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
