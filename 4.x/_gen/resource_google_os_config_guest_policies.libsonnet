local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  assignment:: {
    group_labels:: {
      new(
        labels
      ):: std.prune(a={
        labels: labels,
      }),
    },
    new(
      group_labels=null,
      instance_name_prefixes=null,
      instances=null,
      os_types=null,
      zones=null
    ):: std.prune(a={
      group_labels: group_labels,
      instance_name_prefixes: instance_name_prefixes,
      instances: instances,
      os_types: os_types,
      zones: zones,
    }),
    os_types:: {
      new(
        os_architecture=null,
        os_short_name=null,
        os_version=null
      ):: std.prune(a={
        os_architecture: os_architecture,
        os_short_name: os_short_name,
        os_version: os_version,
      }),
    },
  },
  new(
    resourceLabel,
    guest_policy_id,
    assignment=null,
    description=null,
    etag=null,
    package_repositories=null,
    packages=null,
    project=null,
    recipes=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_os_config_guest_policies',
    label=resourceLabel,
    attrs=self.newAttrs(
      assignment=assignment,
      description=description,
      etag=etag,
      guest_policy_id=guest_policy_id,
      package_repositories=package_repositories,
      packages=packages,
      project=project,
      recipes=recipes,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    guest_policy_id,
    assignment=null,
    description=null,
    etag=null,
    package_repositories=null,
    packages=null,
    project=null,
    recipes=null,
    timeouts=null
  ):: std.prune(a={
    assignment: assignment,
    description: description,
    etag: etag,
    guest_policy_id: guest_policy_id,
    package_repositories: package_repositories,
    packages: packages,
    project: project,
    recipes: recipes,
    timeouts: timeouts,
  }),
  package_repositories:: {
    apt:: {
      new(
        components,
        distribution,
        uri,
        archive_type=null,
        gpg_key=null
      ):: std.prune(a={
        archive_type: archive_type,
        components: components,
        distribution: distribution,
        gpg_key: gpg_key,
        uri: uri,
      }),
    },
    goo:: {
      new(
        name,
        url
      ):: std.prune(a={
        name: name,
        url: url,
      }),
    },
    new(
      apt=null,
      goo=null,
      yum=null,
      zypper=null
    ):: std.prune(a={
      apt: apt,
      goo: goo,
      yum: yum,
      zypper: zypper,
    }),
    yum:: {
      new(
        base_url,
        display_name=null,
        gpg_keys=null
      ):: std.prune(a={
        base_url: base_url,
        display_name: display_name,
        gpg_keys: gpg_keys,
      }),
    },
    zypper:: {
      new(
        base_url,
        display_name=null,
        gpg_keys=null
      ):: std.prune(a={
        base_url: base_url,
        display_name: display_name,
        gpg_keys: gpg_keys,
      }),
    },
  },
  packages:: {
    new(
      name,
      desired_state=null,
      manager=null
    ):: std.prune(a={
      desired_state: desired_state,
      manager: manager,
      name: name,
    }),
  },
  recipes:: {
    artifacts:: {
      gcs:: {
        new(
          bucket=null,
          generation=null,
          object=null
        ):: std.prune(a={
          bucket: bucket,
          generation: generation,
          object: object,
        }),
      },
      new(
        allow_insecure=null,
        gcs=null,
        remote=null
      ):: std.prune(a={
        allow_insecure: allow_insecure,
        gcs: gcs,
        remote: remote,
      }),
      remote:: {
        new(
          check_sum=null,
          uri=null
        ):: std.prune(a={
          check_sum: check_sum,
          uri: uri,
        }),
      },
    },
    install_steps:: {
      archive_extraction:: {
        new(
          artifact_id,
          type,
          destination=null
        ):: std.prune(a={
          artifact_id: artifact_id,
          destination: destination,
          type: type,
        }),
      },
      dpkg_installation:: {
        new(
          artifact_id
        ):: std.prune(a={
          artifact_id: artifact_id,
        }),
      },
      file_copy:: {
        new(
          artifact_id,
          destination,
          overwrite=null,
          permissions=null
        ):: std.prune(a={
          artifact_id: artifact_id,
          destination: destination,
          overwrite: overwrite,
          permissions: permissions,
        }),
      },
      file_exec:: {
        new(
          allowed_exit_codes=null,
          args=null,
          artifact_id=null,
          local_path=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          args: args,
          artifact_id: artifact_id,
          local_path: local_path,
        }),
      },
      msi_installation:: {
        new(
          artifact_id,
          allowed_exit_codes=null,
          flags=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          artifact_id: artifact_id,
          flags: flags,
        }),
      },
      new(
        archive_extraction=null,
        dpkg_installation=null,
        file_copy=null,
        file_exec=null,
        msi_installation=null,
        rpm_installation=null,
        script_run=null
      ):: std.prune(a={
        archive_extraction: archive_extraction,
        dpkg_installation: dpkg_installation,
        file_copy: file_copy,
        file_exec: file_exec,
        msi_installation: msi_installation,
        rpm_installation: rpm_installation,
        script_run: script_run,
      }),
      rpm_installation:: {
        new(
          artifact_id
        ):: std.prune(a={
          artifact_id: artifact_id,
        }),
      },
      script_run:: {
        new(
          script,
          allowed_exit_codes=null,
          interpreter=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          interpreter: interpreter,
          script: script,
        }),
      },
    },
    new(
      name,
      artifacts=null,
      desired_state=null,
      install_steps=null,
      update_steps=null,
      version=null
    ):: std.prune(a={
      artifacts: artifacts,
      desired_state: desired_state,
      install_steps: install_steps,
      name: name,
      update_steps: update_steps,
      version: version,
    }),
    update_steps:: {
      archive_extraction:: {
        new(
          artifact_id,
          type,
          destination=null
        ):: std.prune(a={
          artifact_id: artifact_id,
          destination: destination,
          type: type,
        }),
      },
      dpkg_installation:: {
        new(
          artifact_id
        ):: std.prune(a={
          artifact_id: artifact_id,
        }),
      },
      file_copy:: {
        new(
          artifact_id,
          destination,
          overwrite=null,
          permissions=null
        ):: std.prune(a={
          artifact_id: artifact_id,
          destination: destination,
          overwrite: overwrite,
          permissions: permissions,
        }),
      },
      file_exec:: {
        new(
          allowed_exit_codes=null,
          args=null,
          artifact_id=null,
          local_path=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          args: args,
          artifact_id: artifact_id,
          local_path: local_path,
        }),
      },
      msi_installation:: {
        new(
          artifact_id,
          allowed_exit_codes=null,
          flags=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          artifact_id: artifact_id,
          flags: flags,
        }),
      },
      new(
        archive_extraction=null,
        dpkg_installation=null,
        file_copy=null,
        file_exec=null,
        msi_installation=null,
        rpm_installation=null,
        script_run=null
      ):: std.prune(a={
        archive_extraction: archive_extraction,
        dpkg_installation: dpkg_installation,
        file_copy: file_copy,
        file_exec: file_exec,
        msi_installation: msi_installation,
        rpm_installation: rpm_installation,
        script_run: script_run,
      }),
      rpm_installation:: {
        new(
          artifact_id
        ):: std.prune(a={
          artifact_id: artifact_id,
        }),
      },
      script_run:: {
        new(
          script,
          allowed_exit_codes=null,
          interpreter=null
        ):: std.prune(a={
          allowed_exit_codes: allowed_exit_codes,
          interpreter: interpreter,
          script: script,
        }),
      },
    },
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
  withAssignment(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          assignment: value,
        },
      },
    },
  },
  withAssignmentMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          assignment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEtag(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          etag: value,
        },
      },
    },
  },
  withGuestPolicyId(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          guest_policy_id: value,
        },
      },
    },
  },
  withPackageRepositories(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          package_repositories: value,
        },
      },
    },
  },
  withPackageRepositoriesMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          package_repositories+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPackages(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          packages: value,
        },
      },
    },
  },
  withPackagesMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          packages+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRecipes(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          recipes: value,
        },
      },
    },
  },
  withRecipesMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          recipes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_guest_policies+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
