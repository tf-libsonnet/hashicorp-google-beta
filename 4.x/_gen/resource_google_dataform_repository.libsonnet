local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  git_remote_settings:: {
    new(
      authentication_token_secret_version,
      default_branch,
      url
    ):: std.prune(a={
      authentication_token_secret_version: authentication_token_secret_version,
      default_branch: default_branch,
      url: url,
    }),
  },
  new(
    resourceLabel,
    name,
    git_remote_settings=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataform_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      git_remote_settings=git_remote_settings,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    git_remote_settings=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    git_remote_settings: git_remote_settings,
    name: name,
    project: project,
    region: region,
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
  withGitRemoteSettings(resourceLabel, value):: {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          git_remote_settings: value,
        },
      },
    },
  },
  withGitRemoteSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          git_remote_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataform_repository+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
